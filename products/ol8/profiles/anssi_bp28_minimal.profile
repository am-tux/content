documentation_complete: true

title: 'ANSSI-BP-028 (minimal)'

description: |-
    This profile contains configurations that align to ANSSI-BP-028 v2.0 at the minimal hardening level.

    ANSSI is the French National Information Security Agency, and stands for Agence nationale de la sécurité des systèmes d'information.
    ANSSI-BP-028 is a configuration recommendation for GNU/Linux systems.

    A copy of the ANSSI-BP-028 can be found at the ANSSI website:
    https://www.ssi.gouv.fr/administration/guide/recommandations-de-securite-relatives-a-un-systeme-gnulinux/

selections:
    - anssi:all:minimal
    - var_password_hashing_algorithm=SHA512
    - var_password_pam_unix_rounds=65536
    # Following rules once had a prodtype incompatible with the ol8 product
    - '!cracklib_accounts_password_pam_minlen'
    - '!accounts_passwords_pam_tally2_deny_root'
    - '!accounts_passwords_pam_tally2'
    - '!cracklib_accounts_password_pam_ucredit'
    - '!cracklib_accounts_password_pam_dcredit'
    - '!cracklib_accounts_password_pam_lcredit'
    - '!cracklib_accounts_password_pam_ocredit'
    - '!accounts_passwords_pam_tally2_unlock_time'
    - '!ensure_redhat_gpgkey_installed'
    - '!package_kea_removed'
