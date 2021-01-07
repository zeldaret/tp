/* 800CF380 000CC2C0  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800CF384 000CC2C4  7C 08 02 A6 */ mflr r0
/* 800CF388 000CC2C8  90 01 00 24 */ stw r0, 0x24(r1)
/* 800CF38C 000CC2CC  39 61 00 20 */ addi r11, r1, 0x20
/* 800CF390 000CC2D0  48 29 2E 41 */ bl _savegpr_26
/* 800CF394 000CC2D4  7C 7F 1B 78 */ mr r31, r3
/* 800CF398 000CC2D8  7F E0 FB 78 */ mr r0, r31
/* 800CF39C 000CC2DC  7C 1A 03 78 */ mr r26, r0
/* 800CF3A0 000CC2E0  4B F4 97 C5 */ bl fopAc_ac_c_NS_ctor
/* 800CF3A4 000CC2E4  3C 60 80 3B */ lis r3, lbl_803B2F70@ha
/* 800CF3A8 000CC2E8  38 03 2F 70 */ addi r0, r3, lbl_803B2F70@l
/* 800CF3AC 000CC2EC  90 1A 06 28 */ stw r0, 0x628(r26)
/* 800CF3B0 000CC2F0  3C 60 80 3B */ lis r3, lbl_803B32B8@ha
/* 800CF3B4 000CC2F4  38 03 32 B8 */ addi r0, r3, lbl_803B32B8@l
/* 800CF3B8 000CC2F8  90 1F 06 28 */ stw r0, 0x628(r31)
/* 800CF3BC 000CC2FC  3B 5F 07 30 */ addi r26, r31, 0x730
/* 800CF3C0 000CC300  3C 60 80 3A */ lis r3, lbl_803A3354@ha
/* 800CF3C4 000CC304  38 03 33 54 */ addi r0, r3, lbl_803A3354@l
/* 800CF3C8 000CC308  90 1F 07 30 */ stw r0, 0x730(r31)
/* 800CF3CC 000CC30C  7F 43 D3 78 */ mr r3, r26
/* 800CF3D0 000CC310  38 80 00 00 */ li r4, 0
/* 800CF3D4 000CC314  48 25 90 29 */ bl J3DFrameCtrl_NS_init
/* 800CF3D8 000CC318  38 00 00 00 */ li r0, 0
/* 800CF3DC 000CC31C  90 1A 00 18 */ stw r0, 0x18(r26)
/* 800CF3E0 000CC320  3B 5F 07 4C */ addi r26, r31, 0x74c
/* 800CF3E4 000CC324  3C 60 80 3A */ lis r3, lbl_803A3354@ha
/* 800CF3E8 000CC328  38 03 33 54 */ addi r0, r3, lbl_803A3354@l
/* 800CF3EC 000CC32C  90 1F 07 4C */ stw r0, 0x74c(r31)
/* 800CF3F0 000CC330  7F 43 D3 78 */ mr r3, r26
/* 800CF3F4 000CC334  38 80 00 00 */ li r4, 0
/* 800CF3F8 000CC338  48 25 90 05 */ bl J3DFrameCtrl_NS_init
/* 800CF3FC 000CC33C  38 00 00 00 */ li r0, 0
/* 800CF400 000CC340  90 1A 00 18 */ stw r0, 0x18(r26)
/* 800CF404 000CC344  38 7F 07 C4 */ addi r3, r31, 0x7c4
/*.global daPy_actorKeep_c*/
/* 800CF408 000CC348  3C 80 80 14 */ lis r4, daPy_actorKeep_c@ha
/*.global daPy_actorKeep_c*/
/* 800CF40C 000CC34C  38 84 10 EC */ addi r4, r4, daPy_actorKeep_c@l
/* 800CF410 000CC350  38 A0 00 00 */ li r5, 0
/* 800CF414 000CC354  38 C0 00 08 */ li r6, 8
/* 800CF418 000CC358  38 E0 00 0A */ li r7, 0xa
/* 800CF41C 000CC35C  48 29 29 45 */ bl func_80361D60
/* 800CF420 000CC360  3C 60 80 3C */ lis r3, lbl_803C3728@ha
/* 800CF424 000CC364  38 03 37 28 */ addi r0, r3, lbl_803C3728@l
/* 800CF428 000CC368  90 1F 08 2C */ stw r0, 0x82c(r31)
/* 800CF42C 000CC36C  38 7F 08 30 */ addi r3, r31, 0x830
/* 800CF430 000CC370  4B FB 43 31 */ bl dCcD_GStts
/* 800CF434 000CC374  3C 60 80 3B */ lis r3, lbl_803AC2E4@ha
/* 800CF438 000CC378  38 63 C2 E4 */ addi r3, r3, lbl_803AC2E4@l
/* 800CF43C 000CC37C  90 7F 08 2C */ stw r3, 0x82c(r31)
/* 800CF440 000CC380  3B C3 00 20 */ addi r30, r3, 0x20
/* 800CF444 000CC384  93 DF 08 30 */ stw r30, 0x830(r31)
/* 800CF448 000CC388  38 7F 08 50 */ addi r3, r31, 0x850
/*.global dCcD_Cyl*/
/* 800CF44C 000CC38C  3C 80 80 14 */ lis r4, dCcD_Cyl@ha
/*.global dCcD_Cyl*/
/* 800CF450 000CC390  38 84 10 20 */ addi r4, r4, dCcD_Cyl@l
/*.global dCcD_Cyl_NS_dtor*/
/* 800CF454 000CC394  3C A0 80 08 */ lis r5, dCcD_Cyl_NS_dtor@ha
/*.global dCcD_Cyl_NS_dtor*/
/* 800CF458 000CC398  38 A5 4D 60 */ addi r5, r5, dCcD_Cyl_NS_dtor@l
/* 800CF45C 000CC39C  38 C0 01 3C */ li r6, 0x13c
/* 800CF460 000CC3A0  38 E0 00 03 */ li r7, 3
/* 800CF464 000CC3A4  48 29 28 FD */ bl func_80361D60
/* 800CF468 000CC3A8  38 7F 0C 04 */ addi r3, r31, 0xc04
/*.global dCcD_Cyl*/
/* 800CF46C 000CC3AC  3C 80 80 14 */ lis r4, dCcD_Cyl@ha
/*.global dCcD_Cyl*/
/* 800CF470 000CC3B0  38 84 10 20 */ addi r4, r4, dCcD_Cyl@l
/*.global dCcD_Cyl_NS_dtor*/
/* 800CF474 000CC3B4  3C A0 80 08 */ lis r5, dCcD_Cyl_NS_dtor@ha
/*.global dCcD_Cyl_NS_dtor*/
/* 800CF478 000CC3B8  38 A5 4D 60 */ addi r5, r5, dCcD_Cyl_NS_dtor@l
/* 800CF47C 000CC3BC  38 C0 01 3C */ li r6, 0x13c
/* 800CF480 000CC3C0  38 E0 00 03 */ li r7, 3
/* 800CF484 000CC3C4  48 29 28 DD */ bl func_80361D60
/* 800CF488 000CC3C8  3B 5F 0F B8 */ addi r26, r31, 0xfb8
/* 800CF48C 000CC3CC  7F 43 D3 78 */ mr r3, r26
/* 800CF490 000CC3D0  4B FB 45 99 */ bl dCcD_GObjInf_NS_ctor
/* 800CF494 000CC3D4  3C 60 80 3C */ lis r3, lbl_803C36D0@ha
/* 800CF498 000CC3D8  38 03 36 D0 */ addi r0, r3, lbl_803C36D0@l
/* 800CF49C 000CC3DC  90 1A 01 20 */ stw r0, 0x120(r26)
/* 800CF4A0 000CC3E0  3C 60 80 3A */ lis r3, lbl_803A7218@ha
/* 800CF4A4 000CC3E4  38 03 72 18 */ addi r0, r3, lbl_803A7218@l
/* 800CF4A8 000CC3E8  90 1A 01 1C */ stw r0, 0x11c(r26)
/* 800CF4AC 000CC3EC  3C 60 80 3A */ lis r3, lbl_803A7904@ha
/* 800CF4B0 000CC3F0  38 03 79 04 */ addi r0, r3, lbl_803A7904@l
/* 800CF4B4 000CC3F4  90 1A 01 34 */ stw r0, 0x134(r26)
/* 800CF4B8 000CC3F8  3C 60 80 3C */ lis r3, lbl_803C3540@ha
/* 800CF4BC 000CC3FC  38 63 35 40 */ addi r3, r3, lbl_803C3540@l
/* 800CF4C0 000CC400  90 7A 01 20 */ stw r3, 0x120(r26)
/* 800CF4C4 000CC404  3B A3 00 58 */ addi r29, r3, 0x58
/* 800CF4C8 000CC408  93 BA 01 34 */ stw r29, 0x134(r26)
/* 800CF4CC 000CC40C  3C 60 80 3B */ lis r3, lbl_803ABFC0@ha
/* 800CF4D0 000CC410  38 63 BF C0 */ addi r3, r3, lbl_803ABFC0@l
/* 800CF4D4 000CC414  90 7A 00 3C */ stw r3, 0x3c(r26)
/* 800CF4D8 000CC418  3B 83 00 2C */ addi r28, r3, 0x2c
/* 800CF4DC 000CC41C  93 9A 01 20 */ stw r28, 0x120(r26)
/* 800CF4E0 000CC420  3B 63 00 84 */ addi r27, r3, 0x84
/* 800CF4E4 000CC424  93 7A 01 34 */ stw r27, 0x134(r26)
/* 800CF4E8 000CC428  3B 5F 10 F0 */ addi r26, r31, 0x10f0
/* 800CF4EC 000CC42C  7F 43 D3 78 */ mr r3, r26
/* 800CF4F0 000CC430  4B FB 45 39 */ bl dCcD_GObjInf_NS_ctor
/* 800CF4F4 000CC434  3C 60 80 3C */ lis r3, lbl_803C36D0@ha
/* 800CF4F8 000CC438  38 03 36 D0 */ addi r0, r3, lbl_803C36D0@l
/* 800CF4FC 000CC43C  90 1A 01 20 */ stw r0, 0x120(r26)
/* 800CF500 000CC440  3C 60 80 3A */ lis r3, lbl_803A7218@ha
/* 800CF504 000CC444  38 03 72 18 */ addi r0, r3, lbl_803A7218@l
/* 800CF508 000CC448  90 1A 01 1C */ stw r0, 0x11c(r26)
/* 800CF50C 000CC44C  3C 60 80 3A */ lis r3, lbl_803A720C@ha
/* 800CF510 000CC450  38 03 72 0C */ addi r0, r3, lbl_803A720C@l
/* 800CF514 000CC454  90 1A 01 38 */ stw r0, 0x138(r26)
/* 800CF518 000CC458  3C 60 80 3C */ lis r3, lbl_803C35A4@ha
/* 800CF51C 000CC45C  38 63 35 A4 */ addi r3, r3, lbl_803C35A4@l
/* 800CF520 000CC460  90 7A 01 20 */ stw r3, 0x120(r26)
/* 800CF524 000CC464  38 03 00 58 */ addi r0, r3, 0x58
/* 800CF528 000CC468  90 1A 01 38 */ stw r0, 0x138(r26)
/* 800CF52C 000CC46C  3C 60 80 3B */ lis r3, lbl_803AC050@ha
/* 800CF530 000CC470  38 63 C0 50 */ addi r3, r3, lbl_803AC050@l
/* 800CF534 000CC474  90 7A 00 3C */ stw r3, 0x3c(r26)
/* 800CF538 000CC478  38 03 00 2C */ addi r0, r3, 0x2c
/* 800CF53C 000CC47C  90 1A 01 20 */ stw r0, 0x120(r26)
/* 800CF540 000CC480  38 03 00 84 */ addi r0, r3, 0x84
/* 800CF544 000CC484  90 1A 01 38 */ stw r0, 0x138(r26)
/* 800CF548 000CC488  38 7F 12 2C */ addi r3, r31, 0x122c
/*.global dCcD_Cps*/
/* 800CF54C 000CC48C  3C 80 80 14 */ lis r4, dCcD_Cps@ha
/*.global dCcD_Cps*/
/* 800CF550 000CC490  38 84 0F A0 */ addi r4, r4, dCcD_Cps@l
/*.global dCcD_Cps_NS_dtor*/
/* 800CF554 000CC494  3C A0 80 08 */ lis r5, dCcD_Cps_NS_dtor@ha
/*.global dCcD_Cps_NS_dtor*/
/* 800CF558 000CC498  38 A5 50 6C */ addi r5, r5, dCcD_Cps_NS_dtor@l
/* 800CF55C 000CC49C  38 C0 01 44 */ li r6, 0x144
/* 800CF560 000CC4A0  38 E0 00 03 */ li r7, 3
/* 800CF564 000CC4A4  48 29 27 FD */ bl func_80361D60
/* 800CF568 000CC4A8  3B 5F 15 F8 */ addi r26, r31, 0x15f8
/* 800CF56C 000CC4AC  7F 43 D3 78 */ mr r3, r26
/* 800CF570 000CC4B0  4B FB 44 B9 */ bl dCcD_GObjInf_NS_ctor
/* 800CF574 000CC4B4  3C 60 80 3C */ lis r3, lbl_803C36D0@ha
/* 800CF578 000CC4B8  38 03 36 D0 */ addi r0, r3, lbl_803C36D0@l
/* 800CF57C 000CC4BC  90 1A 01 20 */ stw r0, 0x120(r26)
/* 800CF580 000CC4C0  3C 60 80 3A */ lis r3, lbl_803A7218@ha
/* 800CF584 000CC4C4  38 03 72 18 */ addi r0, r3, lbl_803A7218@l
/* 800CF588 000CC4C8  90 1A 01 1C */ stw r0, 0x11c(r26)
/* 800CF58C 000CC4CC  38 7A 01 24 */ addi r3, r26, 0x124
/* 800CF590 000CC4D0  48 19 F9 F9 */ bl __ct__8cM3dGCpsFv
/* 800CF594 000CC4D4  3C 60 80 3C */ lis r3, lbl_803C3608@ha
/* 800CF598 000CC4D8  38 63 36 08 */ addi r3, r3, lbl_803C3608@l
/* 800CF59C 000CC4DC  90 7A 01 20 */ stw r3, 0x120(r26)
/* 800CF5A0 000CC4E0  38 03 00 58 */ addi r0, r3, 0x58
/* 800CF5A4 000CC4E4  90 1A 01 3C */ stw r0, 0x13c(r26)
/* 800CF5A8 000CC4E8  3C 60 80 3B */ lis r3, lbl_803AC170@ha
/* 800CF5AC 000CC4EC  38 63 C1 70 */ addi r3, r3, lbl_803AC170@l
/* 800CF5B0 000CC4F0  90 7A 00 3C */ stw r3, 0x3c(r26)
/* 800CF5B4 000CC4F4  38 03 00 2C */ addi r0, r3, 0x2c
/* 800CF5B8 000CC4F8  90 1A 01 20 */ stw r0, 0x120(r26)
/* 800CF5BC 000CC4FC  38 03 00 84 */ addi r0, r3, 0x84
/* 800CF5C0 000CC500  90 1A 01 3C */ stw r0, 0x13c(r26)
/* 800CF5C4 000CC504  3C 60 80 3C */ lis r3, lbl_803C3728@ha
/* 800CF5C8 000CC508  38 03 37 28 */ addi r0, r3, lbl_803C3728@l
/* 800CF5CC 000CC50C  90 1F 17 54 */ stw r0, 0x1754(r31)
/* 800CF5D0 000CC510  38 7F 17 58 */ addi r3, r31, 0x1758
/* 800CF5D4 000CC514  4B FB 41 8D */ bl dCcD_GStts
/* 800CF5D8 000CC518  3C 60 80 3B */ lis r3, lbl_803AC2E4@ha
/* 800CF5DC 000CC51C  38 03 C2 E4 */ addi r0, r3, lbl_803AC2E4@l
/* 800CF5E0 000CC520  90 1F 17 54 */ stw r0, 0x1754(r31)
/* 800CF5E4 000CC524  93 DF 17 58 */ stw r30, 0x1758(r31)
/* 800CF5E8 000CC528  3B 5F 17 78 */ addi r26, r31, 0x1778
/* 800CF5EC 000CC52C  7F 43 D3 78 */ mr r3, r26
/* 800CF5F0 000CC530  4B FB 44 39 */ bl dCcD_GObjInf_NS_ctor
/* 800CF5F4 000CC534  3C 60 80 3C */ lis r3, lbl_803C36D0@ha
/* 800CF5F8 000CC538  38 03 36 D0 */ addi r0, r3, lbl_803C36D0@l
/* 800CF5FC 000CC53C  90 1A 01 20 */ stw r0, 0x120(r26)
/* 800CF600 000CC540  3C 60 80 3A */ lis r3, lbl_803A7218@ha
/* 800CF604 000CC544  38 03 72 18 */ addi r0, r3, lbl_803A7218@l
/* 800CF608 000CC548  90 1A 01 1C */ stw r0, 0x11c(r26)
/* 800CF60C 000CC54C  3C 60 80 3A */ lis r3, lbl_803A7904@ha
/* 800CF610 000CC550  38 03 79 04 */ addi r0, r3, lbl_803A7904@l
/* 800CF614 000CC554  90 1A 01 34 */ stw r0, 0x134(r26)
/* 800CF618 000CC558  3C 60 80 3C */ lis r3, lbl_803C3540@ha
/* 800CF61C 000CC55C  38 03 35 40 */ addi r0, r3, lbl_803C3540@l
/* 800CF620 000CC560  90 1A 01 20 */ stw r0, 0x120(r26)
/* 800CF624 000CC564  93 BA 01 34 */ stw r29, 0x134(r26)
/* 800CF628 000CC568  3C 60 80 3B */ lis r3, lbl_803ABFC0@ha
/* 800CF62C 000CC56C  38 03 BF C0 */ addi r0, r3, lbl_803ABFC0@l
/* 800CF630 000CC570  90 1A 00 3C */ stw r0, 0x3c(r26)
/* 800CF634 000CC574  93 9A 01 20 */ stw r28, 0x120(r26)
/* 800CF638 000CC578  93 7A 01 34 */ stw r27, 0x134(r26)
/* 800CF63C 000CC57C  38 7F 18 B0 */ addi r3, r31, 0x18b0
/* 800CF640 000CC580  3C 80 80 07 */ lis r4, dBgS_AcchCir@ha
/* 800CF644 000CC584  38 84 5E AC */ addi r4, r4, dBgS_AcchCir@l
/*.global dBgS_AcchCir_NS_dtor*/
/* 800CF648 000CC588  3C A0 80 07 */ lis r5, dBgS_AcchCir_NS_dtor@ha
/*.global dBgS_AcchCir_NS_dtor*/
/* 800CF64C 000CC58C  38 A5 74 14 */ addi r5, r5, dBgS_AcchCir_NS_dtor@l
/* 800CF650 000CC590  38 C0 00 40 */ li r6, 0x40
/* 800CF654 000CC594  38 E0 00 03 */ li r7, 3
/* 800CF658 000CC598  48 29 27 09 */ bl func_80361D60
/* 800CF65C 000CC59C  3B 5F 19 70 */ addi r26, r31, 0x1970
/* 800CF660 000CC5A0  7F 43 D3 78 */ mr r3, r26
/* 800CF664 000CC5A4  4B FA 6A 3D */ bl dBgS_Acch
/* 800CF668 000CC5A8  3C 60 80 3B */ lis r3, lbl_803B2F28@ha
/* 800CF66C 000CC5AC  38 63 2F 28 */ addi r3, r3, lbl_803B2F28@l
/* 800CF670 000CC5B0  90 7A 00 10 */ stw r3, 0x10(r26)
/* 800CF674 000CC5B4  38 03 00 0C */ addi r0, r3, 0xc
/* 800CF678 000CC5B8  90 1A 00 14 */ stw r0, 0x14(r26)
/* 800CF67C 000CC5BC  38 03 00 18 */ addi r0, r3, 0x18
/* 800CF680 000CC5C0  90 1A 00 24 */ stw r0, 0x24(r26)
/* 800CF684 000CC5C4  38 7A 00 14 */ addi r3, r26, 0x14
/* 800CF688 000CC5C8  4B FA 98 11 */ bl dBgS_PolyPassChk_NS_SetLink
/* 800CF68C 000CC5CC  38 7F 1B 48 */ addi r3, r31, 0x1b48
/* 800CF690 000CC5D0  4B FA 89 A1 */ bl dBgS_LinkLinChk
/* 800CF694 000CC5D4  38 7F 1B B8 */ addi r3, r31, 0x1bb8
/* 800CF698 000CC5D8  4B FA 8C F5 */ bl dBgS_RopeLinChk
/* 800CF69C 000CC5DC  38 7F 1C 28 */ addi r3, r31, 0x1c28
/* 800CF6A0 000CC5E0  4B FA 8C 19 */ bl dBgS_BoomerangLinChk
/* 800CF6A4 000CC5E4  38 7F 1C 98 */ addi r3, r31, 0x1c98
/* 800CF6A8 000CC5E8  4B FA 8B 31 */ bl dBgS_ArrowLinChk
/* 800CF6AC 000CC5EC  3B 5F 1D 08 */ addi r26, r31, 0x1d08
/* 800CF6B0 000CC5F0  7F 43 D3 78 */ mr r3, r26
/* 800CF6B4 000CC5F4  4B FA 7E C9 */ bl dBgS_GndChk
/* 800CF6B8 000CC5F8  3C 60 80 3B */ lis r3, lbl_803B2EF8@ha
/* 800CF6BC 000CC5FC  38 63 2E F8 */ addi r3, r3, lbl_803B2EF8@l
/* 800CF6C0 000CC600  90 7A 00 10 */ stw r3, 0x10(r26)
/* 800CF6C4 000CC604  38 03 00 0C */ addi r0, r3, 0xc
/* 800CF6C8 000CC608  90 1A 00 20 */ stw r0, 0x20(r26)
/* 800CF6CC 000CC60C  38 03 00 18 */ addi r0, r3, 0x18
/* 800CF6D0 000CC610  90 1A 00 3C */ stw r0, 0x3c(r26)
/* 800CF6D4 000CC614  38 03 00 24 */ addi r0, r3, 0x24
/* 800CF6D8 000CC618  90 1A 00 4C */ stw r0, 0x4c(r26)
/* 800CF6DC 000CC61C  38 7A 00 3C */ addi r3, r26, 0x3c
/* 800CF6E0 000CC620  4B FA 97 B9 */ bl dBgS_PolyPassChk_NS_SetLink
/* 800CF6E4 000CC624  3B 5F 1D 5C */ addi r26, r31, 0x1d5c
/* 800CF6E8 000CC628  7F 43 D3 78 */ mr r3, r26
/* 800CF6EC 000CC62C  4B FA 99 09 */ bl dBgS_RoofChk
/* 800CF6F0 000CC630  3C 60 80 3B */ lis r3, lbl_803B2EC8@ha
/* 800CF6F4 000CC634  38 63 2E C8 */ addi r3, r3, lbl_803B2EC8@l
/* 800CF6F8 000CC638  90 7A 00 0C */ stw r3, 0xc(r26)
/* 800CF6FC 000CC63C  38 03 00 0C */ addi r0, r3, 0xc
/* 800CF700 000CC640  90 1A 00 20 */ stw r0, 0x20(r26)
/* 800CF704 000CC644  38 03 00 18 */ addi r0, r3, 0x18
/* 800CF708 000CC648  90 1A 00 24 */ stw r0, 0x24(r26)
/* 800CF70C 000CC64C  38 03 00 24 */ addi r0, r3, 0x24
/* 800CF710 000CC650  90 1A 00 34 */ stw r0, 0x34(r26)
/* 800CF714 000CC654  38 7A 00 24 */ addi r3, r26, 0x24
/* 800CF718 000CC658  4B FA 97 81 */ bl dBgS_PolyPassChk_NS_SetLink
/* 800CF71C 000CC65C  38 7F 1D AC */ addi r3, r31, 0x1dac
/* 800CF720 000CC660  4B FA 89 11 */ bl dBgS_LinkLinChk
/* 800CF724 000CC664  38 7F 1E 1C */ addi r3, r31, 0x1e1c
/* 800CF728 000CC668  48 19 89 4D */ bl __ct__13cBgS_PolyInfoFv
/* 800CF72C 000CC66C  38 7F 1E 2C */ addi r3, r31, 0x1e2c
/* 800CF730 000CC670  48 19 89 45 */ bl __ct__13cBgS_PolyInfoFv
/* 800CF734 000CC674  38 7F 1E 3C */ addi r3, r31, 0x1e3c
/* 800CF738 000CC678  48 19 89 3D */ bl __ct__13cBgS_PolyInfoFv
/* 800CF73C 000CC67C  38 7F 1E 4C */ addi r3, r31, 0x1e4c
/* 800CF740 000CC680  48 19 89 35 */ bl __ct__13cBgS_PolyInfoFv
/* 800CF744 000CC684  38 7F 1E 5C */ addi r3, r31, 0x1e5c
/* 800CF748 000CC688  4B FA 88 15 */ bl dBgS_ObjLinChk
/* 800CF74C 000CC68C  3B 5F 1E CC */ addi r26, r31, 0x1ecc
/* 800CF750 000CC690  7F 43 D3 78 */ mr r3, r26
/* 800CF754 000CC694  4B FA 7E 29 */ bl dBgS_GndChk
/* 800CF758 000CC698  3C 60 80 3A */ lis r3, lbl_803A382C@ha
/* 800CF75C 000CC69C  38 63 38 2C */ addi r3, r3, lbl_803A382C@l
/* 800CF760 000CC6A0  90 7A 00 10 */ stw r3, 0x10(r26)
/* 800CF764 000CC6A4  38 03 00 0C */ addi r0, r3, 0xc
/* 800CF768 000CC6A8  90 1A 00 20 */ stw r0, 0x20(r26)
/* 800CF76C 000CC6AC  38 03 00 18 */ addi r0, r3, 0x18
/* 800CF770 000CC6B0  90 1A 00 3C */ stw r0, 0x3c(r26)
/* 800CF774 000CC6B4  38 03 00 24 */ addi r0, r3, 0x24
/* 800CF778 000CC6B8  90 1A 00 4C */ stw r0, 0x4c(r26)
/* 800CF77C 000CC6BC  38 7A 00 3C */ addi r3, r26, 0x3c
/* 800CF780 000CC6C0  4B FA 96 E9 */ bl dBgS_PolyPassChk_NS_SetObj
/* 800CF784 000CC6C4  38 7F 1F 28 */ addi r3, r31, 0x1f28
/*.global mDoExt_AnmRatioPack*/
/* 800CF788 000CC6C8  3C 80 80 14 */ lis r4, mDoExt_AnmRatioPack@ha
/*.global mDoExt_AnmRatioPack*/
/* 800CF78C 000CC6CC  38 84 0E 2C */ addi r4, r4, mDoExt_AnmRatioPack@l
/*.global mDoExt_AnmRatioPack_NS_dtor*/
/* 800CF790 000CC6D0  3C A0 80 14 */ lis r5, mDoExt_AnmRatioPack_NS_dtor@ha
/*.global mDoExt_AnmRatioPack_NS_dtor*/
/* 800CF794 000CC6D4  38 A5 0D F0 */ addi r5, r5, mDoExt_AnmRatioPack_NS_dtor@l
/* 800CF798 000CC6D8  38 C0 00 08 */ li r6, 8
/* 800CF79C 000CC6DC  38 E0 00 03 */ li r7, 3
/* 800CF7A0 000CC6E0  48 29 25 C1 */ bl func_80361D60
/* 800CF7A4 000CC6E4  38 7F 1F 40 */ addi r3, r31, 0x1f40
/*.global mDoExt_AnmRatioPack*/
/* 800CF7A8 000CC6E8  3C 80 80 14 */ lis r4, mDoExt_AnmRatioPack@ha
/*.global mDoExt_AnmRatioPack*/
/* 800CF7AC 000CC6EC  38 84 0E 2C */ addi r4, r4, mDoExt_AnmRatioPack@l
/*.global mDoExt_AnmRatioPack_NS_dtor*/
/* 800CF7B0 000CC6F0  3C A0 80 14 */ lis r5, mDoExt_AnmRatioPack_NS_dtor@ha
/*.global mDoExt_AnmRatioPack_NS_dtor*/
/* 800CF7B4 000CC6F4  38 A5 0D F0 */ addi r5, r5, mDoExt_AnmRatioPack_NS_dtor@l
/* 800CF7B8 000CC6F8  38 C0 00 08 */ li r6, 8
/* 800CF7BC 000CC6FC  38 E0 00 03 */ li r7, 3
/* 800CF7C0 000CC700  48 29 25 A1 */ bl func_80361D60
/* 800CF7C4 000CC704  38 7F 1F 58 */ addi r3, r31, 0x1f58
/*.global daPy_anmHeap_c_NS___defctor*/
/* 800CF7C8 000CC708  3C 80 80 14 */ lis r4, daPy_anmHeap_c_NS___defctor@ha
/*.global daPy_anmHeap_c_NS___defctor*/
/* 800CF7CC 000CC70C  38 84 0D CC */ addi r4, r4, daPy_anmHeap_c_NS___defctor@l
/* 800CF7D0 000CC710  3C A0 80 16 */ lis r5, daPy_anmHeap_c_NS_dtor@ha
/* 800CF7D4 000CC714  38 A5 ED 50 */ addi r5, r5, daPy_anmHeap_c_NS_dtor@l
/* 800CF7D8 000CC718  38 C0 00 14 */ li r6, 0x14
/* 800CF7DC 000CC71C  38 E0 00 03 */ li r7, 3
/* 800CF7E0 000CC720  48 29 25 81 */ bl func_80361D60
/* 800CF7E4 000CC724  38 7F 1F 94 */ addi r3, r31, 0x1f94
/*.global daPy_anmHeap_c_NS___defctor*/
/* 800CF7E8 000CC728  3C 80 80 14 */ lis r4, daPy_anmHeap_c_NS___defctor@ha
/*.global daPy_anmHeap_c_NS___defctor*/
/* 800CF7EC 000CC72C  38 84 0D CC */ addi r4, r4, daPy_anmHeap_c_NS___defctor@l
/* 800CF7F0 000CC730  3C A0 80 16 */ lis r5, daPy_anmHeap_c_NS_dtor@ha
/* 800CF7F4 000CC734  38 A5 ED 50 */ addi r5, r5, daPy_anmHeap_c_NS_dtor@l
/* 800CF7F8 000CC738  38 C0 00 14 */ li r6, 0x14
/* 800CF7FC 000CC73C  38 E0 00 03 */ li r7, 3
/* 800CF800 000CC740  48 29 25 61 */ bl func_80361D60
/* 800CF804 000CC744  38 7F 1F D0 */ addi r3, r31, 0x1fd0
/*.global daPy_frameCtrl_c*/
/* 800CF808 000CC748  3C 80 80 14 */ lis r4, daPy_frameCtrl_c_NS_ctor@ha
/*.global daPy_frameCtrl_c*/
/* 800CF80C 000CC74C  38 84 0D 80 */ addi r4, r4, daPy_frameCtrl_c_NS_ctor@l
/*.global daPy_frameCtrl_c_NS_dtor*/
/* 800CF810 000CC750  3C A0 80 14 */ lis r5, daPy_frameCtrl_c_NS_dtor@ha
/*.global daPy_frameCtrl_c_NS_dtor*/
/* 800CF814 000CC754  38 A5 0D 24 */ addi r5, r5, daPy_frameCtrl_c_NS_dtor@l
/* 800CF818 000CC758  38 C0 00 18 */ li r6, 0x18
/* 800CF81C 000CC75C  38 E0 00 03 */ li r7, 3
/* 800CF820 000CC760  48 29 25 41 */ bl func_80361D60
/* 800CF824 000CC764  38 7F 20 18 */ addi r3, r31, 0x2018
/*.global daPy_frameCtrl_c*/
/* 800CF828 000CC768  3C 80 80 14 */ lis r4, daPy_frameCtrl_c_NS_ctor@ha
/*.global daPy_frameCtrl_c*/
/* 800CF82C 000CC76C  38 84 0D 80 */ addi r4, r4, daPy_frameCtrl_c_NS_ctor@l
/*.global daPy_frameCtrl_c_NS_dtor*/
/* 800CF830 000CC770  3C A0 80 14 */ lis r5, daPy_frameCtrl_c_NS_dtor@ha
/*.global daPy_frameCtrl_c_NS_dtor*/
/* 800CF834 000CC774  38 A5 0D 24 */ addi r5, r5, daPy_frameCtrl_c_NS_dtor@l
/* 800CF838 000CC778  38 C0 00 18 */ li r6, 0x18
/* 800CF83C 000CC77C  38 E0 00 03 */ li r7, 3
/* 800CF840 000CC780  48 29 25 21 */ bl func_80361D60
/* 800CF844 000CC784  3C 60 80 3A */ lis r3, lbl_803A6F88@ha
/* 800CF848 000CC788  38 83 6F 88 */ addi r4, r3, lbl_803A6F88@l
/* 800CF84C 000CC78C  90 9F 20 64 */ stw r4, 0x2064(r31)
/* 800CF850 000CC790  3C 60 80 3C */ lis r3, lbl_803BA14C@ha
/* 800CF854 000CC794  38 03 A1 4C */ addi r0, r3, lbl_803BA14C@l
/* 800CF858 000CC798  90 1F 20 64 */ stw r0, 0x2064(r31)
/* 800CF85C 000CC79C  3C 60 80 3B */ lis r3, lbl_803B3580@ha
/* 800CF860 000CC7A0  38 03 35 80 */ addi r0, r3, lbl_803B3580@l
/* 800CF864 000CC7A4  90 1F 20 64 */ stw r0, 0x2064(r31)
/* 800CF868 000CC7A8  90 9F 20 B4 */ stw r4, 0x20b4(r31)
/* 800CF86C 000CC7AC  3C 60 80 3B */ lis r3, lbl_803B3590@ha
/* 800CF870 000CC7B0  38 03 35 90 */ addi r0, r3, lbl_803B3590@l
/* 800CF874 000CC7B4  90 1F 20 B4 */ stw r0, 0x20b4(r31)
/* 800CF878 000CC7B8  38 7F 20 F0 */ addi r3, r31, 0x20f0
/* 800CF87C 000CC7BC  38 80 00 00 */ li r4, 0
/* 800CF880 000CC7C0  48 08 F4 91 */ bl daPy_anmHeap_c_NS_ctor
/* 800CF884 000CC7C4  38 7F 21 04 */ addi r3, r31, 0x2104
/* 800CF888 000CC7C8  38 80 00 00 */ li r4, 0
/* 800CF88C 000CC7CC  48 08 F4 85 */ bl daPy_anmHeap_c_NS_ctor
/* 800CF890 000CC7D0  38 7F 21 18 */ addi r3, r31, 0x2118
/* 800CF894 000CC7D4  38 80 08 00 */ li r4, 0x800
/* 800CF898 000CC7D8  48 08 F4 79 */ bl daPy_anmHeap_c_NS_ctor
/* 800CF89C 000CC7DC  38 7F 21 2C */ addi r3, r31, 0x212c
/* 800CF8A0 000CC7E0  38 80 04 00 */ li r4, 0x400
/* 800CF8A4 000CC7E4  48 08 F4 6D */ bl daPy_anmHeap_c_NS_ctor
/* 800CF8A8 000CC7E8  38 7F 21 40 */ addi r3, r31, 0x2140
/* 800CF8AC 000CC7EC  38 80 0C 00 */ li r4, 0xc00
/* 800CF8B0 000CC7F0  48 08 F4 61 */ bl daPy_anmHeap_c_NS_ctor
/* 800CF8B4 000CC7F4  3B 5F 21 64 */ addi r26, r31, 0x2164
/* 800CF8B8 000CC7F8  3C 60 80 3A */ lis r3, lbl_803A3354@ha
/* 800CF8BC 000CC7FC  38 03 33 54 */ addi r0, r3, lbl_803A3354@l
/* 800CF8C0 000CC800  90 1F 21 64 */ stw r0, 0x2164(r31)
/* 800CF8C4 000CC804  7F 43 D3 78 */ mr r3, r26
/* 800CF8C8 000CC808  38 80 00 00 */ li r4, 0
/* 800CF8CC 000CC80C  48 25 8B 31 */ bl J3DFrameCtrl_NS_init
/* 800CF8D0 000CC810  38 80 00 00 */ li r4, 0
/* 800CF8D4 000CC814  90 9A 00 18 */ stw r4, 0x18(r26)
/* 800CF8D8 000CC818  3C 60 80 3B */ lis r3, lbl_803B2E80@ha
/* 800CF8DC 000CC81C  38 03 2E 80 */ addi r0, r3, lbl_803B2E80@l
/* 800CF8E0 000CC820  90 1F 21 88 */ stw r0, 0x2188(r31)
/* 800CF8E4 000CC824  90 9F 21 8C */ stw r4, 0x218c(r31)
/* 800CF8E8 000CC828  90 9F 21 94 */ stw r4, 0x2194(r31)
/* 800CF8EC 000CC82C  90 9F 21 98 */ stw r4, 0x2198(r31)
/* 800CF8F0 000CC830  90 1F 21 9C */ stw r0, 0x219c(r31)
/* 800CF8F4 000CC834  90 9F 21 A0 */ stw r4, 0x21a0(r31)
/* 800CF8F8 000CC838  90 9F 21 A8 */ stw r4, 0x21a8(r31)
/* 800CF8FC 000CC83C  90 9F 21 AC */ stw r4, 0x21ac(r31)
/* 800CF900 000CC840  38 7F 21 B0 */ addi r3, r31, 0x21b0
/*.global daPy_anmHeap_c_NS___defctor*/
/* 800CF904 000CC844  3C 80 80 14 */ lis r4, daPy_anmHeap_c_NS___defctor@ha
/*.global daPy_anmHeap_c_NS___defctor*/
/* 800CF908 000CC848  38 84 0D CC */ addi r4, r4, daPy_anmHeap_c_NS___defctor@l
/* 800CF90C 000CC84C  3C A0 80 16 */ lis r5, daPy_anmHeap_c_NS_dtor@ha
/* 800CF910 000CC850  38 A5 ED 50 */ addi r5, r5, daPy_anmHeap_c_NS_dtor@l
/* 800CF914 000CC854  38 C0 00 14 */ li r6, 0x14
/* 800CF918 000CC858  38 E0 00 02 */ li r7, 2
/* 800CF91C 000CC85C  48 29 24 45 */ bl func_80361D60
/* 800CF920 000CC860  38 7F 21 D8 */ addi r3, r31, 0x21d8
/* 800CF924 000CC864  38 80 08 00 */ li r4, 0x800
/* 800CF928 000CC868  48 08 F3 E9 */ bl daPy_anmHeap_c_NS_ctor
/* 800CF92C 000CC86C  3C 60 80 3D */ lis r3, lbl_803CD97C@ha
/* 800CF930 000CC870  38 03 D9 7C */ addi r0, r3, lbl_803CD97C@l
/* 800CF934 000CC874  90 1F 21 F0 */ stw r0, 0x21f0(r31)
/* 800CF938 000CC878  38 00 00 00 */ li r0, 0
/* 800CF93C 000CC87C  90 1F 21 F4 */ stw r0, 0x21f4(r31)
/* 800CF940 000CC880  90 1F 21 F8 */ stw r0, 0x21f8(r31)
/* 800CF944 000CC884  90 1F 21 FC */ stw r0, 0x21fc(r31)
/* 800CF948 000CC888  3C 60 80 3B */ lis r3, lbl_803B35A0@ha
/* 800CF94C 000CC88C  38 03 35 A0 */ addi r0, r3, lbl_803B35A0@l
/* 800CF950 000CC890  90 1F 21 F0 */ stw r0, 0x21f0(r31)
/* 800CF954 000CC894  38 7F 22 28 */ addi r3, r31, 0x2228
/* 800CF958 000CC898  3C 80 80 01 */ lis r4, cXyz_NS_ctor@ha
/* 800CF95C 000CC89C  38 84 25 DC */ addi r4, r4, cXyz_NS_ctor@l
/* 800CF960 000CC8A0  3C A0 80 01 */ lis r5, cXyz_NS_dtor@ha
/* 800CF964 000CC8A4  38 A5 91 84 */ addi r5, r5, cXyz_NS_dtor@l
/* 800CF968 000CC8A8  38 C0 00 0C */ li r6, 0xc
/* 800CF96C 000CC8AC  38 E0 00 3C */ li r7, 0x3c
/* 800CF970 000CC8B0  48 29 23 F1 */ bl func_80361D60
/* 800CF974 000CC8B4  38 7F 24 F8 */ addi r3, r31, 0x24f8
/* 800CF978 000CC8B8  3C 80 80 01 */ lis r4, cXyz_NS_ctor@ha
/* 800CF97C 000CC8BC  38 84 25 DC */ addi r4, r4, cXyz_NS_ctor@l
/* 800CF980 000CC8C0  3C A0 80 01 */ lis r5, cXyz_NS_dtor@ha
/* 800CF984 000CC8C4  38 A5 91 84 */ addi r5, r5, cXyz_NS_dtor@l
/* 800CF988 000CC8C8  38 C0 00 0C */ li r6, 0xc
/* 800CF98C 000CC8CC  38 E0 00 3C */ li r7, 0x3c
/* 800CF990 000CC8D0  48 29 23 D1 */ bl func_80361D60
/* 800CF994 000CC8D4  3C 60 80 3A */ lis r3, lbl_803A357C@ha
/* 800CF998 000CC8D8  38 03 35 7C */ addi r0, r3, lbl_803A357C@l
/* 800CF99C 000CC8DC  90 1F 27 C8 */ stw r0, 0x27c8(r31)
/* 800CF9A0 000CC8E0  3C 60 80 3B */ lis r3, lbl_803B35B4@ha
/* 800CF9A4 000CC8E4  38 03 35 B4 */ addi r0, r3, lbl_803B35B4@l
/* 800CF9A8 000CC8E8  90 1F 27 C8 */ stw r0, 0x27c8(r31)
/* 800CF9AC 000CC8EC  38 00 00 00 */ li r0, 0
/* 800CF9B0 000CC8F0  B0 1F 27 CC */ sth r0, 0x27cc(r31)
/* 800CF9B4 000CC8F4  B0 1F 27 CE */ sth r0, 0x27ce(r31)
/* 800CF9B8 000CC8F8  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800CF9BC 000CC8FC  D0 1F 27 D0 */ stfs f0, 0x27d0(r31)
/* 800CF9C0 000CC900  38 7F 28 0C */ addi r3, r31, 0x280c
/* 800CF9C4 000CC904  48 08 F3 39 */ bl daPy_actorKeep_c_NS_clearData
/* 800CF9C8 000CC908  38 7F 28 14 */ addi r3, r31, 0x2814
/* 800CF9CC 000CC90C  48 08 F3 31 */ bl daPy_actorKeep_c_NS_clearData
/* 800CF9D0 000CC910  38 7F 28 1C */ addi r3, r31, 0x281c
/* 800CF9D4 000CC914  48 08 F3 29 */ bl daPy_actorKeep_c_NS_clearData
/* 800CF9D8 000CC918  38 7F 28 24 */ addi r3, r31, 0x2824
/* 800CF9DC 000CC91C  48 08 F3 21 */ bl daPy_actorKeep_c_NS_clearData
/* 800CF9E0 000CC920  38 7F 28 2C */ addi r3, r31, 0x282c
/* 800CF9E4 000CC924  48 08 F3 19 */ bl daPy_actorKeep_c_NS_clearData
/* 800CF9E8 000CC928  38 7F 28 34 */ addi r3, r31, 0x2834
/* 800CF9EC 000CC92C  48 08 F3 11 */ bl daPy_actorKeep_c_NS_clearData
/* 800CF9F0 000CC930  38 7F 28 3C */ addi r3, r31, 0x283c
/* 800CF9F4 000CC934  48 08 F3 09 */ bl daPy_actorKeep_c_NS_clearData
/* 800CF9F8 000CC938  38 7F 28 44 */ addi r3, r31, 0x2844
/* 800CF9FC 000CC93C  48 08 F3 01 */ bl daPy_actorKeep_c_NS_clearData
/* 800CFA00 000CC940  38 7F 28 4C */ addi r3, r31, 0x284c
/* 800CFA04 000CC944  48 08 F2 F9 */ bl daPy_actorKeep_c_NS_clearData
/* 800CFA08 000CC948  38 7F 28 54 */ addi r3, r31, 0x2854
/* 800CFA0C 000CC94C  48 08 F2 F1 */ bl daPy_actorKeep_c_NS_clearData
/* 800CFA10 000CC950  38 7F 28 5C */ addi r3, r31, 0x285c
/* 800CFA14 000CC954  48 08 F2 E9 */ bl daPy_actorKeep_c_NS_clearData
/* 800CFA18 000CC958  38 7F 28 64 */ addi r3, r31, 0x2864
/* 800CFA1C 000CC95C  48 17 A4 E5 */ bl dMsgFlow_c
/* 800CFA20 000CC960  38 7F 29 04 */ addi r3, r31, 0x2904
/*.global daAlink_footData_c*/
/* 800CFA24 000CC964  3C 80 80 0D */ lis r4, daAlink_footData_c_NS_ctor@ha
/*.global daAlink_footData_c*/
/* 800CFA28 000CC968  38 84 FC F4 */ addi r4, r4, daAlink_footData_c_NS_ctor@l
/*.global daAlink_footData_c_NS_dtor*/
/* 800CFA2C 000CC96C  3C A0 80 0D */ lis r5, daAlink_footData_c_NS_dtor@ha
/*.global daAlink_footData_c_NS_dtor*/
/* 800CFA30 000CC970  38 A5 FC B8 */ addi r5, r5, daAlink_footData_c_NS_dtor@l
/* 800CFA34 000CC974  38 C0 00 A4 */ li r6, 0xa4
/* 800CFA38 000CC978  38 E0 00 02 */ li r7, 2
/* 800CFA3C 000CC97C  48 29 23 25 */ bl func_80361D60
/* 800CFA40 000CC980  38 7F 2A 4C */ addi r3, r31, 0x2a4c
/*.global daAlink_footData_c*/
/* 800CFA44 000CC984  3C 80 80 0D */ lis r4, daAlink_footData_c_NS_ctor@ha
/*.global daAlink_footData_c*/
/* 800CFA48 000CC988  38 84 FC F4 */ addi r4, r4, daAlink_footData_c_NS_ctor@l
/*.global daAlink_footData_c_NS_dtor*/
/* 800CFA4C 000CC98C  3C A0 80 0D */ lis r5, daAlink_footData_c_NS_dtor@ha
/*.global daAlink_footData_c_NS_dtor*/
/* 800CFA50 000CC990  38 A5 FC B8 */ addi r5, r5, daAlink_footData_c_NS_dtor@l
/* 800CFA54 000CC994  38 C0 00 A4 */ li r6, 0xa4
/* 800CFA58 000CC998  38 E0 00 02 */ li r7, 2
/* 800CFA5C 000CC99C  48 29 23 05 */ bl func_80361D60
/* 800CFA60 000CC9A0  38 7F 2C A8 */ addi r3, r31, 0x2ca8
/* 800CFA64 000CC9A4  48 1F 38 D9 */ bl __ct__14Z2CreatureLinkFv
/* 800CFA68 000CC9A8  38 7F 2D 84 */ addi r3, r31, 0x2d84
/* 800CFA6C 000CC9AC  48 1F B0 55 */ bl Z2WolfHowlMgr
/* 800CFA70 000CC9B0  38 7F 2E 44 */ addi r3, r31, 0x2e44
/* 800CFA74 000CC9B4  4B F6 62 19 */ bl dJntCol_c
/* 800CFA78 000CC9B8  3C 60 80 3B */ lis r3, lbl_803A8578@ha
/* 800CFA7C 000CC9BC  38 A3 85 78 */ addi r5, r3, lbl_803A8578@l
/* 800CFA80 000CC9C0  90 BF 2F 20 */ stw r5, 0x2f20(r31)
/* 800CFA84 000CC9C4  3C 60 80 3B */ lis r3, lbl_803A8554@ha
/* 800CFA88 000CC9C8  38 83 85 54 */ addi r4, r3, lbl_803A8554@l
/* 800CFA8C 000CC9CC  90 9F 2F 20 */ stw r4, 0x2f20(r31)
/* 800CFA90 000CC9D0  3C 60 80 3B */ lis r3, lbl_803A83A0@ha
/* 800CFA94 000CC9D4  38 03 83 A0 */ addi r0, r3, lbl_803A83A0@l
/* 800CFA98 000CC9D8  90 1F 2F 20 */ stw r0, 0x2f20(r31)
/* 800CFA9C 000CC9DC  90 BF 2F 38 */ stw r5, 0x2f38(r31)
/* 800CFAA0 000CC9E0  90 9F 2F 38 */ stw r4, 0x2f38(r31)
/* 800CFAA4 000CC9E4  90 1F 2F 38 */ stw r0, 0x2f38(r31)
/* 800CFAA8 000CC9E8  38 7F 31 2A */ addi r3, r31, 0x312a
/*.global csXyz*/
/* 800CFAAC 000CC9EC  3C 80 80 11 */ lis r4, csXyz_NS_ctor@ha
/*.global csXyz*/
/* 800CFAB0 000CC9F0  38 84 2C 80 */ addi r4, r4, csXyz_NS_ctor@l
/*.global csXyz_NS_dtor*/
/* 800CFAB4 000CC9F4  3C A0 80 02 */ lis r5, csXyz_NS_dtor@ha
/*.global csXyz_NS_dtor*/
/* 800CFAB8 000CC9F8  38 A5 8B D0 */ addi r5, r5, csXyz_NS_dtor@l
/* 800CFABC 000CC9FC  38 C0 00 06 */ li r6, 6
/* 800CFAC0 000CCA00  38 E0 00 02 */ li r7, 2
/* 800CFAC4 000CCA04  48 29 22 9D */ bl func_80361D60
/* 800CFAC8 000CCA08  38 7F 31 36 */ addi r3, r31, 0x3136
/*.global csXyz*/
/* 800CFACC 000CCA0C  3C 80 80 11 */ lis r4, csXyz_NS_ctor@ha
/*.global csXyz*/
/* 800CFAD0 000CCA10  38 84 2C 80 */ addi r4, r4, csXyz_NS_ctor@l
/*.global csXyz_NS_dtor*/
/* 800CFAD4 000CCA14  3C A0 80 02 */ lis r5, csXyz_NS_dtor@ha
/*.global csXyz_NS_dtor*/
/* 800CFAD8 000CCA18  38 A5 8B D0 */ addi r5, r5, csXyz_NS_dtor@l
/* 800CFADC 000CCA1C  38 C0 00 06 */ li r6, 6
/* 800CFAE0 000CCA20  38 E0 00 02 */ li r7, 2
/* 800CFAE4 000CCA24  48 29 22 7D */ bl func_80361D60
/* 800CFAE8 000CCA28  38 7F 31 42 */ addi r3, r31, 0x3142
/*.global csXyz*/
/* 800CFAEC 000CCA2C  3C 80 80 11 */ lis r4, csXyz_NS_ctor@ha
/*.global csXyz*/
/* 800CFAF0 000CCA30  38 84 2C 80 */ addi r4, r4, csXyz_NS_ctor@l
/*.global csXyz_NS_dtor*/
/* 800CFAF4 000CCA34  3C A0 80 02 */ lis r5, csXyz_NS_dtor@ha
/*.global csXyz_NS_dtor*/
/* 800CFAF8 000CCA38  38 A5 8B D0 */ addi r5, r5, csXyz_NS_dtor@l
/* 800CFAFC 000CCA3C  38 C0 00 06 */ li r6, 6
/* 800CFB00 000CCA40  38 E0 00 04 */ li r7, 4
/* 800CFB04 000CCA44  48 29 22 5D */ bl func_80361D60
/* 800CFB08 000CCA48  38 7F 32 A0 */ addi r3, r31, 0x32a0
/*.global J3DGXColorS10*/
/* 800CFB0C 000CCA4C  3C 80 80 01 */ lis r4, J3DGXColorS10@ha
/*.global J3DGXColorS10*/
/* 800CFB10 000CCA50  38 84 E4 60 */ addi r4, r4, J3DGXColorS10@l
/* 800CFB14 000CCA54  38 A0 00 00 */ li r5, 0
/* 800CFB18 000CCA58  38 C0 00 08 */ li r6, 8
/* 800CFB1C 000CCA5C  38 E0 00 02 */ li r7, 2
/* 800CFB20 000CCA60  48 29 22 41 */ bl func_80361D60
/* 800CFB24 000CCA64  38 7F 32 B0 */ addi r3, r31, 0x32b0
/*.global J3DGXColorS10*/
/* 800CFB28 000CCA68  3C 80 80 01 */ lis r4, J3DGXColorS10@ha
/*.global J3DGXColorS10*/
/* 800CFB2C 000CCA6C  38 84 E4 60 */ addi r4, r4, J3DGXColorS10@l
/* 800CFB30 000CCA70  38 A0 00 00 */ li r5, 0
/* 800CFB34 000CCA74  38 C0 00 08 */ li r6, 8
/* 800CFB38 000CCA78  38 E0 00 02 */ li r7, 2
/* 800CFB3C 000CCA7C  48 29 22 25 */ bl func_80361D60
/* 800CFB40 000CCA80  38 7F 32 D8 */ addi r3, r31, 0x32d8
/*.global daAlink_c_NS_firePointEff_c*/
/* 800CFB44 000CCA84  3C 80 80 0D */ lis r4, daAlink_c_NS_firePointEff_c@ha
/*.global daAlink_c_NS_firePointEff_c*/
/* 800CFB48 000CCA88  38 84 FC 78 */ addi r4, r4, daAlink_c_NS_firePointEff_c@l
/*.global daAlink_c_NS_firePointEff_c_NS_dtor*/
/* 800CFB4C 000CCA8C  3C A0 80 0D */ lis r5, daAlink_c_NS_firePointEff_c_NS_dtor@ha
/*.global daAlink_c_NS_firePointEff_c_NS_dtor*/
/* 800CFB50 000CCA90  38 A5 FC 3C */ addi r5, r5, daAlink_c_NS_firePointEff_c_NS_dtor@l
/* 800CFB54 000CCA94  38 C0 00 30 */ li r6, 0x30
/* 800CFB58 000CCA98  38 E0 00 04 */ li r7, 4
/* 800CFB5C 000CCA9C  48 29 22 05 */ bl func_80361D60
/* 800CFB60 000CCAA0  38 7F 35 4C */ addi r3, r31, 0x354c
/* 800CFB64 000CCAA4  3C 80 80 01 */ lis r4, cXyz_NS_ctor@ha
/* 800CFB68 000CCAA8  38 84 25 DC */ addi r4, r4, cXyz_NS_ctor@l
/* 800CFB6C 000CCAAC  3C A0 80 01 */ lis r5, cXyz_NS_dtor@ha
/* 800CFB70 000CCAB0  38 A5 91 84 */ addi r5, r5, cXyz_NS_dtor@l
/* 800CFB74 000CCAB4  38 C0 00 0C */ li r6, 0xc
/* 800CFB78 000CCAB8  38 E0 00 04 */ li r7, 4
/* 800CFB7C 000CCABC  48 29 21 E5 */ bl func_80361D60
/* 800CFB80 000CCAC0  38 7F 36 3C */ addi r3, r31, 0x363c
/* 800CFB84 000CCAC4  3C 80 80 01 */ lis r4, cXyz_NS_ctor@ha
/* 800CFB88 000CCAC8  38 84 25 DC */ addi r4, r4, cXyz_NS_ctor@l
/* 800CFB8C 000CCACC  3C A0 80 01 */ lis r5, cXyz_NS_dtor@ha
/* 800CFB90 000CCAD0  38 A5 91 84 */ addi r5, r5, cXyz_NS_dtor@l
/* 800CFB94 000CCAD4  38 C0 00 0C */ li r6, 0xc
/* 800CFB98 000CCAD8  38 E0 00 04 */ li r7, 4
/* 800CFB9C 000CCADC  48 29 21 C5 */ bl func_80361D60
/* 800CFBA0 000CCAE0  38 7F 36 6C */ addi r3, r31, 0x366c
/* 800CFBA4 000CCAE4  3C 80 80 01 */ lis r4, cXyz_NS_ctor@ha
/* 800CFBA8 000CCAE8  38 84 25 DC */ addi r4, r4, cXyz_NS_ctor@l
/* 800CFBAC 000CCAEC  3C A0 80 01 */ lis r5, cXyz_NS_dtor@ha
/* 800CFBB0 000CCAF0  38 A5 91 84 */ addi r5, r5, cXyz_NS_dtor@l
/* 800CFBB4 000CCAF4  38 C0 00 0C */ li r6, 0xc
/* 800CFBB8 000CCAF8  38 E0 00 04 */ li r7, 4
/* 800CFBBC 000CCAFC  48 29 21 A5 */ bl func_80361D60
/* 800CFBC0 000CCB00  38 7F 36 C0 */ addi r3, r31, 0x36c0
/* 800CFBC4 000CCB04  3C 80 80 01 */ lis r4, cXyz_NS_ctor@ha
/* 800CFBC8 000CCB08  38 84 25 DC */ addi r4, r4, cXyz_NS_ctor@l
/* 800CFBCC 000CCB0C  3C A0 80 01 */ lis r5, cXyz_NS_dtor@ha
/* 800CFBD0 000CCB10  38 A5 91 84 */ addi r5, r5, cXyz_NS_dtor@l
/* 800CFBD4 000CCB14  38 C0 00 0C */ li r6, 0xc
/* 800CFBD8 000CCB18  38 E0 00 04 */ li r7, 4
/* 800CFBDC 000CCB1C  48 29 21 85 */ bl func_80361D60
/* 800CFBE0 000CCB20  38 7F 36 F0 */ addi r3, r31, 0x36f0
/* 800CFBE4 000CCB24  3C 80 80 01 */ lis r4, cXyz_NS_ctor@ha
/* 800CFBE8 000CCB28  38 84 25 DC */ addi r4, r4, cXyz_NS_ctor@l
/* 800CFBEC 000CCB2C  3C A0 80 01 */ lis r5, cXyz_NS_dtor@ha
/* 800CFBF0 000CCB30  38 A5 91 84 */ addi r5, r5, cXyz_NS_dtor@l
/* 800CFBF4 000CCB34  38 C0 00 0C */ li r6, 0xc
/* 800CFBF8 000CCB38  38 E0 00 04 */ li r7, 4
/* 800CFBFC 000CCB3C  48 29 21 65 */ bl func_80361D60
/* 800CFC00 000CCB40  38 7F 37 B0 */ addi r3, r31, 0x37b0
/* 800CFC04 000CCB44  3C 80 80 01 */ lis r4, cXyz_NS_ctor@ha
/* 800CFC08 000CCB48  38 84 25 DC */ addi r4, r4, cXyz_NS_ctor@l
/* 800CFC0C 000CCB4C  3C A0 80 01 */ lis r5, cXyz_NS_dtor@ha
/* 800CFC10 000CCB50  38 A5 91 84 */ addi r5, r5, cXyz_NS_dtor@l
/* 800CFC14 000CCB54  38 C0 00 0C */ li r6, 0xc
/* 800CFC18 000CCB58  38 E0 00 02 */ li r7, 2
/* 800CFC1C 000CCB5C  48 29 21 45 */ bl func_80361D60
/* 800CFC20 000CCB60  7F E3 FB 78 */ mr r3, r31
/* 800CFC24 000CCB64  39 61 00 20 */ addi r11, r1, 0x20
/* 800CFC28 000CCB68  48 29 25 F5 */ bl _restgpr_26
/* 800CFC2C 000CCB6C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800CFC30 000CCB70  7C 08 03 A6 */ mtlr r0
/* 800CFC34 000CCB74  38 21 00 20 */ addi r1, r1, 0x20
/* 800CFC38 000CCB78  4E 80 00 20 */ blr