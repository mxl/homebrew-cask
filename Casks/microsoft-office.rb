cask 'microsoft-office' do
  version '15.27.0_161010'
  sha256 '05994c29ee845dcdcdb0f9d9ab042082d51d06e002a2ce2dd5c3e8421b0ad2c8'

  # officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/ was verified as official when first introduced to the cask
  url "https://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/Microsoft_Office_2016_#{version}_Installer.pkg"
  name 'Microsoft Office 2016'
  homepage 'https://products.office.com/mac/microsoft-office-for-mac'

  auto_updates true

  pkg "Microsoft_Office_2016_#{version}_Installer.pkg"

  uninstall pkgutil:   [
                         'com.microsoft.package.*',
                         'com.microsoft.pkg.licensing',
                       ],
            launchctl: [
                         'com.microsoft.autoupdate.helpertool',
                         'com.microsoft.office.licensing.helper',
                         'com.microsoft.office.licensingV2.helper',
                       ]

  zap       delete: [
                      '~/Library/Application Scripts/com.microsoft.Excel',
                      '~/Library/Application Scripts/com.microsoft.Office365ServiceV2',
                      '~/Library/Application Scripts/com.microsoft.onenote.mac',
                      '~/Library/Application Scripts/com.microsoft.Outlook',
                      '~/Library/Application Scripts/com.microsoft.Powerpoint',
                      '~/Library/Application Scripts/com.microsoft.Word',
                      '~/Library/Caches/com.microsoft.autoupdate.fba',
                      '~/Library/Caches/com.microsoft.autoupdate2',
                      '~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate.fba',
                      '~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate2',
                      '~/Library/Containers/com.microsoft.Excel',
                      '~/Library/Containers/com.microsoft.errorreporting',
                      '~/Library/Containers/com.microsoft.Office365ServiceV2',
                      '~/Library/Containers/com.microsoft.onenote.mac',
                      '~/Library/Containers/com.microsoft.Outlook',
                      '~/Library/Containers/com.microsoft.Powerpoint',
                      '~/Library/Containers/com.microsoft.Word',
                      '~/Library/Cookies/com.microsoft.autoupdate.fba.binarycookies',
                      '~/Library/Cookies/com.microsoft.autoupdate2.binarycookies',
                      '~/Library/Group Containers/UBF8T346G9.ms/com.microsoft.autoupdate2',
                      '~/Library/Group Containers/UBF8T346G9.Office/com.microsoft.officeprefs.plist',
                      '~/Library/Preferences/com.microsoft.autoupdate.fba.plist',
                      '~/Library/Preferences/com.microsoft.Excel.LSSharedFileList.plist',
                      '~/Library/Saved Application State/com.microsoft.onenote.mac.savedState',
                      '~/Library/Saved Application State/com.microsoft.Outlook.savedState',
                    ]
end
