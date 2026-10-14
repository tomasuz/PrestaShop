<?php
/**
 * Override: load theme-main JS at priority 1 (before jQuery UI at ~50)
 * so jQuery is available when other modules initialize.
 */
class FrontController extends FrontControllerCore
{
    public function setMedia()
    {
        $this->registerStylesheet('theme-main', '/assets/css/theme.css', ['media' => 'all', 'priority' => 50]);
        $this->registerStylesheet('theme-custom', '/assets/css/custom.css', ['media' => 'all', 'priority' => 1000]);

        if ($this->context->language->is_rtl) {
            $this->registerStylesheet('theme-rtl', '/assets/css/rtl.css', ['media' => 'all', 'priority' => 900]);
        }

        if ($this->context->shop->theme->requiresCoreScripts()) {
            $this->registerJavascript('corejs', '/themes/core.js', ['position' => 'bottom', 'priority' => 0]);
        }
        $this->registerJavascript('theme-main', '/assets/js/theme.js', ['position' => 'bottom', 'priority' => 1]);
        $this->registerJavascript('theme-custom', '/assets/js/custom.js', ['position' => 'bottom', 'priority' => 1000]);

        $assets = $this->context->shop->theme->getPageSpecificAssets($this->php_self);
        if (!empty($assets)) {
            foreach ($assets['css'] as $css) {
                $this->registerStylesheet($css['id'], $css['path'], $css);
            }
            foreach ($assets['js'] as $js) {
                $this->registerJavascript($js['id'], $js['path'], $js);
            }
        }

        Hook::exec('actionFrontControllerSetMedia');
        Hook::exec('action' . $this->getControllerName() . 'SetMedia');

        return true;
    }
}
