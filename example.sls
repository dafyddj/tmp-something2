{% load_yaml as versions -%}
# renovate: datasource=custom.example depName=example
- '1.0.6'
- '1.0.5'
- '1.0.4'
- '1.0.3'
- '1.0.2'
- '1.0.1'
- '1.0'
{% endload -%}

# add a comment to test status checks

example:
  {% for version in versions -%}
  '{{ version }}':
    full_name: Example Application
    installer: https://download-installer.cdn.mozilla.net/pub/firefox/releases/{{ version }}/win32/en-US/Firefox%20Setup%20{{ version }}.exe
    install_flags: /S
    uninstaller: '%ProgramFiles%\example\uninstall.exe'
    uninstall_flags: /S
  {% endfor -%}
