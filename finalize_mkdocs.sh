# ATTENTION!! Run this script, after you have successfully executed the following 3 steps:
# node convert_sidebars.js
# python3 convert_sidebars.py > mkdocs.yml
# python3 convert_admonitons.py

# Reformat navigation naming/structure/capitalization
sed -i '/^nav:/a\ \ \-\ Home:\ index\.md' mkdocs.yml
sed -i 's|Aws|AWS|g' mkdocs.yml
sed -i 's|Cloudstack|CloudStack|g' mkdocs.yml
sed -i 's|Gcp|GCP|g' mkdocs.yml
sed -i 's|Openstack|OpenStack|g' mkdocs.yml
sed -i 's|Vmware|VMware|g' mkdocs.yml
sed -i 's|Faq|FAQ|g' mkdocs.yml
sed -i 's|Api|API|g' mkdocs.yml
sed -i 's|Jwt|JWT|g' mkdocs.yml
sed -i 's|Mysql\ Operator|MySQL\ Operator|g' mkdocs.yml
sed -i 's|Mariadb|MariaDB|g' mkdocs.yml
sed -i 's|Postgresql|PostgreSQL|g' mkdocs.yml
sed -i 's|Tls|TLS|g' mkdocs.yml
sed -i 's|Ssl|SSL|g' mkdocs.yml
sed -i 's|Multi\ Az|Multi\ AZ|g' mkdocs.yml
sed -i 's|Dns|DNS|g' mkdocs.yml
sed -i 's|Ccx|CCX|g' mkdocs.yml
sed -i 's|Dast|DAST|g' mkdocs.yml
sed -i 's|\-\ Index:|\-|g' mkdocs.yml
sed -i 's|CCX\ Install\ Laptop|Install\ CCX\ on\ a\ Laptop|g' mkdocs.yml

# Reconfigure hyperlinks to use relative path (mkdocs styled)
sed -i 's|\/admin\/Installation\/|Installation\/|g' docs/admin/Index.md
sed -i 's|\/docs\/admin\/Installation\/CCX\-Install\-Laptop|CCX\-Install\-Laptop\.md|g' docs/admin/Installation/Index.md
sed -i 's|\/admin\/Day2\/Config\-Management\.md|\.\.\/Day2\/Config\-Management\.md|g' docs/admin/Installation/Index.md
sed -i 's|\/admin\/Day2\/Lifecycle\-Management\.md|\.\.\/Day2\/Lifecycle\-Management\.md|g' docs/admin/Installation/Index.md
sed -i 's|Cloud\-Providers\.md|Cloud\-Providers\/Cloud\-Providers\.md|g' docs/admin/Installation/Index.md
sed -i 's|\/admin\/Day2\/Upgrading\-the\-Control\-Plane\.md|\.\.\/Day2\/Upgrading\-the\-Control\-Plane\.md|g' docs/admin/Installation/Index.md
sed -i 's|\/docs\/admin\/Day2\/Upgrading\-the\-Control\-Plane|Day2\/Upgrading\-the\-Control\-Plane\.md|g' docs/admin/Changelog.md
sed -i 's|\/admin\/Installation\/Logging\.md|Installation\/Logging\.md|g' docs/admin/Observability.md
sed -i 's|\/admin\/Installation\/Observability\.md|Installation\/Observability\.md|g' docs/admin/Observability.md
sed -i 's|\/admin\/Day2\/Notifications\.md|Day2\/Notifications\.md|g' docs/admin/Observability.md
sed -i 's|\/docs\/user\/Reference\/Supported\-Databases|\.\.\/user\/Reference\/Supported\-Databases\.md|g' docs/admin/FAQ.md
sed -i 's|\/docs\/user\/|Index\.md|g' docs/admin/FAQ.md
sed -i 's|\/docs\/admin\/Troubleshooting\/|\.\.\/Troubleshooting\/Troubleshooting\.md|g' docs/admin/Installation/CCX-Install-Laptop.md
sed -i 's|\/docs\/admin\/Troubleshooting|\.\.\/Troubleshooting\/Troubleshooting\.md|g' docs/admin/Installation/CCX-Install-Laptop.md
sed -i 's|\/docs\/admin\/Installation\/|Index.md|g' docs/admin/Installation/CCX-Install-Laptop.md
sed -i 's|\/docs\/admin\/Installation|Index.md|g' docs/admin/Installation/CCX-Install-Laptop.md
sed -i 's|https:\/\/severalnines\.github\.io\/ccx\-docs/|https://ccxdocs.severalnines.com/|g' docs/admin/Installation/CCX-Install-Laptop.md
sed -i 's|\/docs\/user\/Howto\/Promote\-a\-replica|\.\.\/\.\.\/\.\.\/Howto\/Promote\-a\-replica\.md|g' docs/user/Reference/Products/PostgreSQL/configuration.md
