Name:     gcc-full-suite-16
Version:  0.0.1
Summary:  GCC 16 Full Suite
Release:  1%{?dist}
BuildArch: noarch

License:  GPLv3
URL:      https://gcc.gnu.org

Requires: gcc gcc-gnat gcc-gcobol gcc-gdc gcc-fortran gcc-go gcc-gm2

%description
This metapackage installs all compilers included in GCC 16.0

%prep

%build

%install
mkdir -p %{buildroot}%{_docdir}/%{name}
echo "Metapackage for GCC 16 Suite" > %{buildroot}%{_docdir}/%{name}/README

%files
%{_docdir}/%{name}/README

%changelog
* Mon Aug 17 2026 root - 0.0.1-1
- Initial metapackage creation
