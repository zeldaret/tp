lbl_800CF380:
/* 800CF380  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800CF384  7C 08 02 A6 */	mflr r0
/* 800CF388  90 01 00 24 */	stw r0, 0x24(r1)
/* 800CF38C  39 61 00 20 */	addi r11, r1, 0x20
/* 800CF390  48 29 2E 41 */	bl _savegpr_26
/* 800CF394  7C 7F 1B 78 */	mr r31, r3
/* 800CF398  7F E0 FB 78 */	mr r0, r31
/* 800CF39C  7C 1A 03 78 */	mr r26, r0
/* 800CF3A0  4B F4 97 C5 */	bl __ct__10fopAc_ac_cFv
/* 800CF3A4  3C 60 80 3B */	lis r3, __vt__9daPy_py_c@ha /* 0x803B2F70@ha */
/* 800CF3A8  38 03 2F 70 */	addi r0, r3, __vt__9daPy_py_c@l /* 0x803B2F70@l */
/* 800CF3AC  90 1A 06 28 */	stw r0, 0x628(r26)
/* 800CF3B0  3C 60 80 3B */	lis r3, __vt__9daAlink_c@ha /* 0x803B32B8@ha */
/* 800CF3B4  38 03 32 B8 */	addi r0, r3, __vt__9daAlink_c@l /* 0x803B32B8@l */
/* 800CF3B8  90 1F 06 28 */	stw r0, 0x628(r31)
/* 800CF3BC  3B 5F 07 30 */	addi r26, r31, 0x730
/* 800CF3C0  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 800CF3C4  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 800CF3C8  90 1F 07 30 */	stw r0, 0x730(r31)
/* 800CF3CC  7F 43 D3 78 */	mr r3, r26
/* 800CF3D0  38 80 00 00 */	li r4, 0
/* 800CF3D4  48 25 90 29 */	bl init__12J3DFrameCtrlFs
/* 800CF3D8  38 00 00 00 */	li r0, 0
/* 800CF3DC  90 1A 00 18 */	stw r0, 0x18(r26)
/* 800CF3E0  3B 5F 07 4C */	addi r26, r31, 0x74c
/* 800CF3E4  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 800CF3E8  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 800CF3EC  90 1F 07 4C */	stw r0, 0x74c(r31)
/* 800CF3F0  7F 43 D3 78 */	mr r3, r26
/* 800CF3F4  38 80 00 00 */	li r4, 0
/* 800CF3F8  48 25 90 05 */	bl init__12J3DFrameCtrlFs
/* 800CF3FC  38 00 00 00 */	li r0, 0
/* 800CF400  90 1A 00 18 */	stw r0, 0x18(r26)
/* 800CF404  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 800CF408  3C 80 80 14 */	lis r4, __ct__16daPy_actorKeep_cFv@ha /* 0x801410EC@ha */
/* 800CF40C  38 84 10 EC */	addi r4, r4, __ct__16daPy_actorKeep_cFv@l /* 0x801410EC@l */
/* 800CF410  38 A0 00 00 */	li r5, 0
/* 800CF414  38 C0 00 08 */	li r6, 8
/* 800CF418  38 E0 00 0A */	li r7, 0xa
/* 800CF41C  48 29 29 45 */	bl __construct_array
/* 800CF420  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 800CF424  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 800CF428  90 1F 08 2C */	stw r0, 0x82c(r31)
/* 800CF42C  38 7F 08 30 */	addi r3, r31, 0x830
/* 800CF430  4B FB 43 31 */	bl __ct__10dCcD_GSttsFv
/* 800CF434  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 800CF438  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 800CF43C  90 7F 08 2C */	stw r3, 0x82c(r31)
/* 800CF440  3B C3 00 20 */	addi r30, r3, 0x20
/* 800CF444  93 DF 08 30 */	stw r30, 0x830(r31)
/* 800CF448  38 7F 08 50 */	addi r3, r31, 0x850
/* 800CF44C  3C 80 80 14 */	lis r4, __ct__8dCcD_CylFv@ha /* 0x80141020@ha */
/* 800CF450  38 84 10 20 */	addi r4, r4, __ct__8dCcD_CylFv@l /* 0x80141020@l */
/* 800CF454  3C A0 80 08 */	lis r5, __dt__8dCcD_CylFv@ha /* 0x80084D60@ha */
/* 800CF458  38 A5 4D 60 */	addi r5, r5, __dt__8dCcD_CylFv@l /* 0x80084D60@l */
/* 800CF45C  38 C0 01 3C */	li r6, 0x13c
/* 800CF460  38 E0 00 03 */	li r7, 3
/* 800CF464  48 29 28 FD */	bl __construct_array
/* 800CF468  38 7F 0C 04 */	addi r3, r31, 0xc04
/* 800CF46C  3C 80 80 14 */	lis r4, __ct__8dCcD_CylFv@ha /* 0x80141020@ha */
/* 800CF470  38 84 10 20 */	addi r4, r4, __ct__8dCcD_CylFv@l /* 0x80141020@l */
/* 800CF474  3C A0 80 08 */	lis r5, __dt__8dCcD_CylFv@ha /* 0x80084D60@ha */
/* 800CF478  38 A5 4D 60 */	addi r5, r5, __dt__8dCcD_CylFv@l /* 0x80084D60@l */
/* 800CF47C  38 C0 01 3C */	li r6, 0x13c
/* 800CF480  38 E0 00 03 */	li r7, 3
/* 800CF484  48 29 28 DD */	bl __construct_array
/* 800CF488  3B 5F 0F B8 */	addi r26, r31, 0xfb8
/* 800CF48C  7F 43 D3 78 */	mr r3, r26
/* 800CF490  4B FB 45 99 */	bl __ct__12dCcD_GObjInfFv
/* 800CF494  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 800CF498  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 800CF49C  90 1A 01 20 */	stw r0, 0x120(r26)
/* 800CF4A0  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 800CF4A4  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 800CF4A8  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 800CF4AC  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 800CF4B0  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 800CF4B4  90 1A 01 34 */	stw r0, 0x134(r26)
/* 800CF4B8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 800CF4BC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 800CF4C0  90 7A 01 20 */	stw r3, 0x120(r26)
/* 800CF4C4  3B A3 00 58 */	addi r29, r3, 0x58
/* 800CF4C8  93 BA 01 34 */	stw r29, 0x134(r26)
/* 800CF4CC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 800CF4D0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 800CF4D4  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 800CF4D8  3B 83 00 2C */	addi r28, r3, 0x2c
/* 800CF4DC  93 9A 01 20 */	stw r28, 0x120(r26)
/* 800CF4E0  3B 63 00 84 */	addi r27, r3, 0x84
/* 800CF4E4  93 7A 01 34 */	stw r27, 0x134(r26)
/* 800CF4E8  3B 5F 10 F0 */	addi r26, r31, 0x10f0
/* 800CF4EC  7F 43 D3 78 */	mr r3, r26
/* 800CF4F0  4B FB 45 39 */	bl __ct__12dCcD_GObjInfFv
/* 800CF4F4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 800CF4F8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 800CF4FC  90 1A 01 20 */	stw r0, 0x120(r26)
/* 800CF500  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 800CF504  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 800CF508  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 800CF50C  3C 60 80 3A */	lis r3, __vt__8cM3dGCyl@ha /* 0x803A720C@ha */
/* 800CF510  38 03 72 0C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x803A720C@l */
/* 800CF514  90 1A 01 38 */	stw r0, 0x138(r26)
/* 800CF518  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 800CF51C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 800CF520  90 7A 01 20 */	stw r3, 0x120(r26)
/* 800CF524  38 03 00 58 */	addi r0, r3, 0x58
/* 800CF528  90 1A 01 38 */	stw r0, 0x138(r26)
/* 800CF52C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 800CF530  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 800CF534  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 800CF538  38 03 00 2C */	addi r0, r3, 0x2c
/* 800CF53C  90 1A 01 20 */	stw r0, 0x120(r26)
/* 800CF540  38 03 00 84 */	addi r0, r3, 0x84
/* 800CF544  90 1A 01 38 */	stw r0, 0x138(r26)
/* 800CF548  38 7F 12 2C */	addi r3, r31, 0x122c
/* 800CF54C  3C 80 80 14 */	lis r4, __ct__8dCcD_CpsFv@ha /* 0x80140FA0@ha */
/* 800CF550  38 84 0F A0 */	addi r4, r4, __ct__8dCcD_CpsFv@l /* 0x80140FA0@l */
/* 800CF554  3C A0 80 08 */	lis r5, __dt__8dCcD_CpsFv@ha /* 0x8008506C@ha */
/* 800CF558  38 A5 50 6C */	addi r5, r5, __dt__8dCcD_CpsFv@l /* 0x8008506C@l */
/* 800CF55C  38 C0 01 44 */	li r6, 0x144
/* 800CF560  38 E0 00 03 */	li r7, 3
/* 800CF564  48 29 27 FD */	bl __construct_array
/* 800CF568  3B 5F 15 F8 */	addi r26, r31, 0x15f8
/* 800CF56C  7F 43 D3 78 */	mr r3, r26
/* 800CF570  4B FB 44 B9 */	bl __ct__12dCcD_GObjInfFv
/* 800CF574  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 800CF578  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 800CF57C  90 1A 01 20 */	stw r0, 0x120(r26)
/* 800CF580  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 800CF584  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 800CF588  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 800CF58C  38 7A 01 24 */	addi r3, r26, 0x124
/* 800CF590  48 19 F9 F9 */	bl __ct__8cM3dGCpsFv
/* 800CF594  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 800CF598  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 800CF59C  90 7A 01 20 */	stw r3, 0x120(r26)
/* 800CF5A0  38 03 00 58 */	addi r0, r3, 0x58
/* 800CF5A4  90 1A 01 3C */	stw r0, 0x13c(r26)
/* 800CF5A8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha /* 0x803AC170@ha */
/* 800CF5AC  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l /* 0x803AC170@l */
/* 800CF5B0  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 800CF5B4  38 03 00 2C */	addi r0, r3, 0x2c
/* 800CF5B8  90 1A 01 20 */	stw r0, 0x120(r26)
/* 800CF5BC  38 03 00 84 */	addi r0, r3, 0x84
/* 800CF5C0  90 1A 01 3C */	stw r0, 0x13c(r26)
/* 800CF5C4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 800CF5C8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 800CF5CC  90 1F 17 54 */	stw r0, 0x1754(r31)
/* 800CF5D0  38 7F 17 58 */	addi r3, r31, 0x1758
/* 800CF5D4  4B FB 41 8D */	bl __ct__10dCcD_GSttsFv
/* 800CF5D8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 800CF5DC  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 800CF5E0  90 1F 17 54 */	stw r0, 0x1754(r31)
/* 800CF5E4  93 DF 17 58 */	stw r30, 0x1758(r31)
/* 800CF5E8  3B 5F 17 78 */	addi r26, r31, 0x1778
/* 800CF5EC  7F 43 D3 78 */	mr r3, r26
/* 800CF5F0  4B FB 44 39 */	bl __ct__12dCcD_GObjInfFv
/* 800CF5F4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 800CF5F8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 800CF5FC  90 1A 01 20 */	stw r0, 0x120(r26)
/* 800CF600  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 800CF604  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 800CF608  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 800CF60C  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 800CF610  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 800CF614  90 1A 01 34 */	stw r0, 0x134(r26)
/* 800CF618  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 800CF61C  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 800CF620  90 1A 01 20 */	stw r0, 0x120(r26)
/* 800CF624  93 BA 01 34 */	stw r29, 0x134(r26)
/* 800CF628  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 800CF62C  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 800CF630  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 800CF634  93 9A 01 20 */	stw r28, 0x120(r26)
/* 800CF638  93 7A 01 34 */	stw r27, 0x134(r26)
/* 800CF63C  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800CF640  3C 80 80 07 */	lis r4, __ct__12dBgS_AcchCirFv@ha /* 0x80075EAC@ha */
/* 800CF644  38 84 5E AC */	addi r4, r4, __ct__12dBgS_AcchCirFv@l /* 0x80075EAC@l */
/* 800CF648  3C A0 80 07 */	lis r5, __dt__12dBgS_AcchCirFv@ha /* 0x80077414@ha */
/* 800CF64C  38 A5 74 14 */	addi r5, r5, __dt__12dBgS_AcchCirFv@l /* 0x80077414@l */
/* 800CF650  38 C0 00 40 */	li r6, 0x40
/* 800CF654  38 E0 00 03 */	li r7, 3
/* 800CF658  48 29 27 09 */	bl __construct_array
/* 800CF65C  3B 5F 19 70 */	addi r26, r31, 0x1970
/* 800CF660  7F 43 D3 78 */	mr r3, r26
/* 800CF664  4B FA 6A 3D */	bl __ct__9dBgS_AcchFv
/* 800CF668  3C 60 80 3B */	lis r3, __vt__13dBgS_LinkAcch@ha /* 0x803B2F28@ha */
/* 800CF66C  38 63 2F 28 */	addi r3, r3, __vt__13dBgS_LinkAcch@l /* 0x803B2F28@l */
/* 800CF670  90 7A 00 10 */	stw r3, 0x10(r26)
/* 800CF674  38 03 00 0C */	addi r0, r3, 0xc
/* 800CF678  90 1A 00 14 */	stw r0, 0x14(r26)
/* 800CF67C  38 03 00 18 */	addi r0, r3, 0x18
/* 800CF680  90 1A 00 24 */	stw r0, 0x24(r26)
/* 800CF684  38 7A 00 14 */	addi r3, r26, 0x14
/* 800CF688  4B FA 98 11 */	bl SetLink__16dBgS_PolyPassChkFv
/* 800CF68C  38 7F 1B 48 */	addi r3, r31, 0x1b48
/* 800CF690  4B FA 89 A1 */	bl __ct__15dBgS_LinkLinChkFv
/* 800CF694  38 7F 1B B8 */	addi r3, r31, 0x1bb8
/* 800CF698  4B FA 8C F5 */	bl __ct__15dBgS_RopeLinChkFv
/* 800CF69C  38 7F 1C 28 */	addi r3, r31, 0x1c28
/* 800CF6A0  4B FA 8C 19 */	bl __ct__20dBgS_BoomerangLinChkFv
/* 800CF6A4  38 7F 1C 98 */	addi r3, r31, 0x1c98
/* 800CF6A8  4B FA 8B 31 */	bl __ct__16dBgS_ArrowLinChkFv
/* 800CF6AC  3B 5F 1D 08 */	addi r26, r31, 0x1d08
/* 800CF6B0  7F 43 D3 78 */	mr r3, r26
/* 800CF6B4  4B FA 7E C9 */	bl __ct__11dBgS_GndChkFv
/* 800CF6B8  3C 60 80 3B */	lis r3, __vt__15dBgS_LinkGndChk@ha /* 0x803B2EF8@ha */
/* 800CF6BC  38 63 2E F8 */	addi r3, r3, __vt__15dBgS_LinkGndChk@l /* 0x803B2EF8@l */
/* 800CF6C0  90 7A 00 10 */	stw r3, 0x10(r26)
/* 800CF6C4  38 03 00 0C */	addi r0, r3, 0xc
/* 800CF6C8  90 1A 00 20 */	stw r0, 0x20(r26)
/* 800CF6CC  38 03 00 18 */	addi r0, r3, 0x18
/* 800CF6D0  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 800CF6D4  38 03 00 24 */	addi r0, r3, 0x24
/* 800CF6D8  90 1A 00 4C */	stw r0, 0x4c(r26)
/* 800CF6DC  38 7A 00 3C */	addi r3, r26, 0x3c
/* 800CF6E0  4B FA 97 B9 */	bl SetLink__16dBgS_PolyPassChkFv
/* 800CF6E4  3B 5F 1D 5C */	addi r26, r31, 0x1d5c
/* 800CF6E8  7F 43 D3 78 */	mr r3, r26
/* 800CF6EC  4B FA 99 09 */	bl __ct__12dBgS_RoofChkFv
/* 800CF6F0  3C 60 80 3B */	lis r3, __vt__16dBgS_LinkRoofChk@ha /* 0x803B2EC8@ha */
/* 800CF6F4  38 63 2E C8 */	addi r3, r3, __vt__16dBgS_LinkRoofChk@l /* 0x803B2EC8@l */
/* 800CF6F8  90 7A 00 0C */	stw r3, 0xc(r26)
/* 800CF6FC  38 03 00 0C */	addi r0, r3, 0xc
/* 800CF700  90 1A 00 20 */	stw r0, 0x20(r26)
/* 800CF704  38 03 00 18 */	addi r0, r3, 0x18
/* 800CF708  90 1A 00 24 */	stw r0, 0x24(r26)
/* 800CF70C  38 03 00 24 */	addi r0, r3, 0x24
/* 800CF710  90 1A 00 34 */	stw r0, 0x34(r26)
/* 800CF714  38 7A 00 24 */	addi r3, r26, 0x24
/* 800CF718  4B FA 97 81 */	bl SetLink__16dBgS_PolyPassChkFv
/* 800CF71C  38 7F 1D AC */	addi r3, r31, 0x1dac
/* 800CF720  4B FA 89 11 */	bl __ct__15dBgS_LinkLinChkFv
/* 800CF724  38 7F 1E 1C */	addi r3, r31, 0x1e1c
/* 800CF728  48 19 89 4D */	bl __ct__13cBgS_PolyInfoFv
/* 800CF72C  38 7F 1E 2C */	addi r3, r31, 0x1e2c
/* 800CF730  48 19 89 45 */	bl __ct__13cBgS_PolyInfoFv
/* 800CF734  38 7F 1E 3C */	addi r3, r31, 0x1e3c
/* 800CF738  48 19 89 3D */	bl __ct__13cBgS_PolyInfoFv
/* 800CF73C  38 7F 1E 4C */	addi r3, r31, 0x1e4c
/* 800CF740  48 19 89 35 */	bl __ct__13cBgS_PolyInfoFv
/* 800CF744  38 7F 1E 5C */	addi r3, r31, 0x1e5c
/* 800CF748  4B FA 88 15 */	bl __ct__14dBgS_ObjLinChkFv
/* 800CF74C  3B 5F 1E CC */	addi r26, r31, 0x1ecc
/* 800CF750  7F 43 D3 78 */	mr r3, r26
/* 800CF754  4B FA 7E 29 */	bl __ct__11dBgS_GndChkFv
/* 800CF758  3C 60 80 3A */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x803A382C@ha */
/* 800CF75C  38 63 38 2C */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x803A382C@l */
/* 800CF760  90 7A 00 10 */	stw r3, 0x10(r26)
/* 800CF764  38 03 00 0C */	addi r0, r3, 0xc
/* 800CF768  90 1A 00 20 */	stw r0, 0x20(r26)
/* 800CF76C  38 03 00 18 */	addi r0, r3, 0x18
/* 800CF770  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 800CF774  38 03 00 24 */	addi r0, r3, 0x24
/* 800CF778  90 1A 00 4C */	stw r0, 0x4c(r26)
/* 800CF77C  38 7A 00 3C */	addi r3, r26, 0x3c
/* 800CF780  4B FA 96 E9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 800CF784  38 7F 1F 28 */	addi r3, r31, 0x1f28
/* 800CF788  3C 80 80 14 */	lis r4, __ct__19mDoExt_AnmRatioPackFv@ha /* 0x80140E2C@ha */
/* 800CF78C  38 84 0E 2C */	addi r4, r4, __ct__19mDoExt_AnmRatioPackFv@l /* 0x80140E2C@l */
/* 800CF790  3C A0 80 14 */	lis r5, __dt__19mDoExt_AnmRatioPackFv@ha /* 0x80140DF0@ha */
/* 800CF794  38 A5 0D F0 */	addi r5, r5, __dt__19mDoExt_AnmRatioPackFv@l /* 0x80140DF0@l */
/* 800CF798  38 C0 00 08 */	li r6, 8
/* 800CF79C  38 E0 00 03 */	li r7, 3
/* 800CF7A0  48 29 25 C1 */	bl __construct_array
/* 800CF7A4  38 7F 1F 40 */	addi r3, r31, 0x1f40
/* 800CF7A8  3C 80 80 14 */	lis r4, __ct__19mDoExt_AnmRatioPackFv@ha /* 0x80140E2C@ha */
/* 800CF7AC  38 84 0E 2C */	addi r4, r4, __ct__19mDoExt_AnmRatioPackFv@l /* 0x80140E2C@l */
/* 800CF7B0  3C A0 80 14 */	lis r5, __dt__19mDoExt_AnmRatioPackFv@ha /* 0x80140DF0@ha */
/* 800CF7B4  38 A5 0D F0 */	addi r5, r5, __dt__19mDoExt_AnmRatioPackFv@l /* 0x80140DF0@l */
/* 800CF7B8  38 C0 00 08 */	li r6, 8
/* 800CF7BC  38 E0 00 03 */	li r7, 3
/* 800CF7C0  48 29 25 A1 */	bl __construct_array
/* 800CF7C4  38 7F 1F 58 */	addi r3, r31, 0x1f58
/* 800CF7C8  3C 80 80 14 */	lis r4, __defctor__14daPy_anmHeap_cFv@ha /* 0x80140DCC@ha */
/* 800CF7CC  38 84 0D CC */	addi r4, r4, __defctor__14daPy_anmHeap_cFv@l /* 0x80140DCC@l */
/* 800CF7D0  3C A0 80 16 */	lis r5, __dt__14daPy_anmHeap_cFv@ha /* 0x8015ED50@ha */
/* 800CF7D4  38 A5 ED 50 */	addi r5, r5, __dt__14daPy_anmHeap_cFv@l /* 0x8015ED50@l */
/* 800CF7D8  38 C0 00 14 */	li r6, 0x14
/* 800CF7DC  38 E0 00 03 */	li r7, 3
/* 800CF7E0  48 29 25 81 */	bl __construct_array
/* 800CF7E4  38 7F 1F 94 */	addi r3, r31, 0x1f94
/* 800CF7E8  3C 80 80 14 */	lis r4, __defctor__14daPy_anmHeap_cFv@ha /* 0x80140DCC@ha */
/* 800CF7EC  38 84 0D CC */	addi r4, r4, __defctor__14daPy_anmHeap_cFv@l /* 0x80140DCC@l */
/* 800CF7F0  3C A0 80 16 */	lis r5, __dt__14daPy_anmHeap_cFv@ha /* 0x8015ED50@ha */
/* 800CF7F4  38 A5 ED 50 */	addi r5, r5, __dt__14daPy_anmHeap_cFv@l /* 0x8015ED50@l */
/* 800CF7F8  38 C0 00 14 */	li r6, 0x14
/* 800CF7FC  38 E0 00 03 */	li r7, 3
/* 800CF800  48 29 25 61 */	bl __construct_array
/* 800CF804  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800CF808  3C 80 80 14 */	lis r4, __ct__16daPy_frameCtrl_cFv@ha /* 0x80140D80@ha */
/* 800CF80C  38 84 0D 80 */	addi r4, r4, __ct__16daPy_frameCtrl_cFv@l /* 0x80140D80@l */
/* 800CF810  3C A0 80 14 */	lis r5, __dt__16daPy_frameCtrl_cFv@ha /* 0x80140D24@ha */
/* 800CF814  38 A5 0D 24 */	addi r5, r5, __dt__16daPy_frameCtrl_cFv@l /* 0x80140D24@l */
/* 800CF818  38 C0 00 18 */	li r6, 0x18
/* 800CF81C  38 E0 00 03 */	li r7, 3
/* 800CF820  48 29 25 41 */	bl __construct_array
/* 800CF824  38 7F 20 18 */	addi r3, r31, 0x2018
/* 800CF828  3C 80 80 14 */	lis r4, __ct__16daPy_frameCtrl_cFv@ha /* 0x80140D80@ha */
/* 800CF82C  38 84 0D 80 */	addi r4, r4, __ct__16daPy_frameCtrl_cFv@l /* 0x80140D80@l */
/* 800CF830  3C A0 80 14 */	lis r5, __dt__16daPy_frameCtrl_cFv@ha /* 0x80140D24@ha */
/* 800CF834  38 A5 0D 24 */	addi r5, r5, __dt__16daPy_frameCtrl_cFv@l /* 0x80140D24@l */
/* 800CF838  38 C0 00 18 */	li r6, 0x18
/* 800CF83C  38 E0 00 03 */	li r7, 3
/* 800CF840  48 29 25 21 */	bl __construct_array
/* 800CF844  3C 60 80 3A */	lis r3, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 800CF848  38 83 6F 88 */	addi r4, r3, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 800CF84C  90 9F 20 64 */	stw r4, 0x2064(r31)
/* 800CF850  3C 60 80 3C */	lis r3, __vt__18daPy_sightPacket_c@ha /* 0x803BA14C@ha */
/* 800CF854  38 03 A1 4C */	addi r0, r3, __vt__18daPy_sightPacket_c@l /* 0x803BA14C@l */
/* 800CF858  90 1F 20 64 */	stw r0, 0x2064(r31)
/* 800CF85C  3C 60 80 3B */	lis r3, __vt__15daAlink_sight_c@ha /* 0x803B3580@ha */
/* 800CF860  38 03 35 80 */	addi r0, r3, __vt__15daAlink_sight_c@l /* 0x803B3580@l */
/* 800CF864  90 1F 20 64 */	stw r0, 0x2064(r31)
/* 800CF868  90 9F 20 B4 */	stw r4, 0x20b4(r31)
/* 800CF86C  3C 60 80 3B */	lis r3, __vt__20daAlink_lockCursor_c@ha /* 0x803B3590@ha */
/* 800CF870  38 03 35 90 */	addi r0, r3, __vt__20daAlink_lockCursor_c@l /* 0x803B3590@l */
/* 800CF874  90 1F 20 B4 */	stw r0, 0x20b4(r31)
/* 800CF878  38 7F 20 F0 */	addi r3, r31, 0x20f0
/* 800CF87C  38 80 00 00 */	li r4, 0
/* 800CF880  48 08 F4 91 */	bl __ct__14daPy_anmHeap_cFUl
/* 800CF884  38 7F 21 04 */	addi r3, r31, 0x2104
/* 800CF888  38 80 00 00 */	li r4, 0
/* 800CF88C  48 08 F4 85 */	bl __ct__14daPy_anmHeap_cFUl
/* 800CF890  38 7F 21 18 */	addi r3, r31, 0x2118
/* 800CF894  38 80 08 00 */	li r4, 0x800
/* 800CF898  48 08 F4 79 */	bl __ct__14daPy_anmHeap_cFUl
/* 800CF89C  38 7F 21 2C */	addi r3, r31, 0x212c
/* 800CF8A0  38 80 04 00 */	li r4, 0x400
/* 800CF8A4  48 08 F4 6D */	bl __ct__14daPy_anmHeap_cFUl
/* 800CF8A8  38 7F 21 40 */	addi r3, r31, 0x2140
/* 800CF8AC  38 80 0C 00 */	li r4, 0xc00
/* 800CF8B0  48 08 F4 61 */	bl __ct__14daPy_anmHeap_cFUl
/* 800CF8B4  3B 5F 21 64 */	addi r26, r31, 0x2164
/* 800CF8B8  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 800CF8BC  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 800CF8C0  90 1F 21 64 */	stw r0, 0x2164(r31)
/* 800CF8C4  7F 43 D3 78 */	mr r3, r26
/* 800CF8C8  38 80 00 00 */	li r4, 0
/* 800CF8CC  48 25 8B 31 */	bl init__12J3DFrameCtrlFs
/* 800CF8D0  38 80 00 00 */	li r4, 0
/* 800CF8D4  90 9A 00 18 */	stw r4, 0x18(r26)
/* 800CF8D8  3C 60 80 3B */	lis r3, __vt__8dEyeHL_c@ha /* 0x803B2E80@ha */
/* 800CF8DC  38 03 2E 80 */	addi r0, r3, __vt__8dEyeHL_c@l /* 0x803B2E80@l */
/* 800CF8E0  90 1F 21 88 */	stw r0, 0x2188(r31)
/* 800CF8E4  90 9F 21 8C */	stw r4, 0x218c(r31)
/* 800CF8E8  90 9F 21 94 */	stw r4, 0x2194(r31)
/* 800CF8EC  90 9F 21 98 */	stw r4, 0x2198(r31)
/* 800CF8F0  90 1F 21 9C */	stw r0, 0x219c(r31)
/* 800CF8F4  90 9F 21 A0 */	stw r4, 0x21a0(r31)
/* 800CF8F8  90 9F 21 A8 */	stw r4, 0x21a8(r31)
/* 800CF8FC  90 9F 21 AC */	stw r4, 0x21ac(r31)
/* 800CF900  38 7F 21 B0 */	addi r3, r31, 0x21b0
/* 800CF904  3C 80 80 14 */	lis r4, __defctor__14daPy_anmHeap_cFv@ha /* 0x80140DCC@ha */
/* 800CF908  38 84 0D CC */	addi r4, r4, __defctor__14daPy_anmHeap_cFv@l /* 0x80140DCC@l */
/* 800CF90C  3C A0 80 16 */	lis r5, __dt__14daPy_anmHeap_cFv@ha /* 0x8015ED50@ha */
/* 800CF910  38 A5 ED 50 */	addi r5, r5, __dt__14daPy_anmHeap_cFv@l /* 0x8015ED50@l */
/* 800CF914  38 C0 00 14 */	li r6, 0x14
/* 800CF918  38 E0 00 02 */	li r7, 2
/* 800CF91C  48 29 24 45 */	bl __construct_array
/* 800CF920  38 7F 21 D8 */	addi r3, r31, 0x21d8
/* 800CF924  38 80 08 00 */	li r4, 0x800
/* 800CF928  48 08 F3 E9 */	bl __ct__14daPy_anmHeap_cFUl
/* 800CF92C  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 800CF930  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 800CF934  90 1F 21 F0 */	stw r0, 0x21f0(r31)
/* 800CF938  38 00 00 00 */	li r0, 0
/* 800CF93C  90 1F 21 F4 */	stw r0, 0x21f4(r31)
/* 800CF940  90 1F 21 F8 */	stw r0, 0x21f8(r31)
/* 800CF944  90 1F 21 FC */	stw r0, 0x21fc(r31)
/* 800CF948  3C 60 80 3B */	lis r3, __vt__14daAlink_blur_c@ha /* 0x803B35A0@ha */
/* 800CF94C  38 03 35 A0 */	addi r0, r3, __vt__14daAlink_blur_c@l /* 0x803B35A0@l */
/* 800CF950  90 1F 21 F0 */	stw r0, 0x21f0(r31)
/* 800CF954  38 7F 22 28 */	addi r3, r31, 0x2228
/* 800CF958  3C 80 80 01 */	lis r4, __ct__4cXyzFv@ha /* 0x800125DC@ha */
/* 800CF95C  38 84 25 DC */	addi r4, r4, __ct__4cXyzFv@l /* 0x800125DC@l */
/* 800CF960  3C A0 80 01 */	lis r5, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800CF964  38 A5 91 84 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800CF968  38 C0 00 0C */	li r6, 0xc
/* 800CF96C  38 E0 00 3C */	li r7, 0x3c
/* 800CF970  48 29 23 F1 */	bl __construct_array
/* 800CF974  38 7F 24 F8 */	addi r3, r31, 0x24f8
/* 800CF978  3C 80 80 01 */	lis r4, __ct__4cXyzFv@ha /* 0x800125DC@ha */
/* 800CF97C  38 84 25 DC */	addi r4, r4, __ct__4cXyzFv@l /* 0x800125DC@l */
/* 800CF980  3C A0 80 01 */	lis r5, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800CF984  38 A5 91 84 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800CF988  38 C0 00 0C */	li r6, 0xc
/* 800CF98C  38 E0 00 3C */	li r7, 0x3c
/* 800CF990  48 29 23 D1 */	bl __construct_array
/* 800CF994  3C 60 80 3A */	lis r3, __vt__19JPAParticleCallBack@ha /* 0x803A357C@ha */
/* 800CF998  38 03 35 7C */	addi r0, r3, __vt__19JPAParticleCallBack@l /* 0x803A357C@l */
/* 800CF99C  90 1F 27 C8 */	stw r0, 0x27c8(r31)
/* 800CF9A0  3C 60 80 3B */	lis r3, __vt__29dAlink_bottleWaterPcallBack_c@ha /* 0x803B35B4@ha */
/* 800CF9A4  38 03 35 B4 */	addi r0, r3, __vt__29dAlink_bottleWaterPcallBack_c@l /* 0x803B35B4@l */
/* 800CF9A8  90 1F 27 C8 */	stw r0, 0x27c8(r31)
/* 800CF9AC  38 00 00 00 */	li r0, 0
/* 800CF9B0  B0 1F 27 CC */	sth r0, 0x27cc(r31)
/* 800CF9B4  B0 1F 27 CE */	sth r0, 0x27ce(r31)
/* 800CF9B8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800CF9BC  D0 1F 27 D0 */	stfs f0, 0x27d0(r31)
/* 800CF9C0  38 7F 28 0C */	addi r3, r31, 0x280c
/* 800CF9C4  48 08 F3 39 */	bl clearData__16daPy_actorKeep_cFv
/* 800CF9C8  38 7F 28 14 */	addi r3, r31, 0x2814
/* 800CF9CC  48 08 F3 31 */	bl clearData__16daPy_actorKeep_cFv
/* 800CF9D0  38 7F 28 1C */	addi r3, r31, 0x281c
/* 800CF9D4  48 08 F3 29 */	bl clearData__16daPy_actorKeep_cFv
/* 800CF9D8  38 7F 28 24 */	addi r3, r31, 0x2824
/* 800CF9DC  48 08 F3 21 */	bl clearData__16daPy_actorKeep_cFv
/* 800CF9E0  38 7F 28 2C */	addi r3, r31, 0x282c
/* 800CF9E4  48 08 F3 19 */	bl clearData__16daPy_actorKeep_cFv
/* 800CF9E8  38 7F 28 34 */	addi r3, r31, 0x2834
/* 800CF9EC  48 08 F3 11 */	bl clearData__16daPy_actorKeep_cFv
/* 800CF9F0  38 7F 28 3C */	addi r3, r31, 0x283c
/* 800CF9F4  48 08 F3 09 */	bl clearData__16daPy_actorKeep_cFv
/* 800CF9F8  38 7F 28 44 */	addi r3, r31, 0x2844
/* 800CF9FC  48 08 F3 01 */	bl clearData__16daPy_actorKeep_cFv
/* 800CFA00  38 7F 28 4C */	addi r3, r31, 0x284c
/* 800CFA04  48 08 F2 F9 */	bl clearData__16daPy_actorKeep_cFv
/* 800CFA08  38 7F 28 54 */	addi r3, r31, 0x2854
/* 800CFA0C  48 08 F2 F1 */	bl clearData__16daPy_actorKeep_cFv
/* 800CFA10  38 7F 28 5C */	addi r3, r31, 0x285c
/* 800CFA14  48 08 F2 E9 */	bl clearData__16daPy_actorKeep_cFv
/* 800CFA18  38 7F 28 64 */	addi r3, r31, 0x2864
/* 800CFA1C  48 17 A4 E5 */	bl __ct__10dMsgFlow_cFv
/* 800CFA20  38 7F 29 04 */	addi r3, r31, 0x2904
/* 800CFA24  3C 80 80 0D */	lis r4, __ct__18daAlink_footData_cFv@ha /* 0x800CFCF4@ha */
/* 800CFA28  38 84 FC F4 */	addi r4, r4, __ct__18daAlink_footData_cFv@l /* 0x800CFCF4@l */
/* 800CFA2C  3C A0 80 0D */	lis r5, __dt__18daAlink_footData_cFv@ha /* 0x800CFCB8@ha */
/* 800CFA30  38 A5 FC B8 */	addi r5, r5, __dt__18daAlink_footData_cFv@l /* 0x800CFCB8@l */
/* 800CFA34  38 C0 00 A4 */	li r6, 0xa4
/* 800CFA38  38 E0 00 02 */	li r7, 2
/* 800CFA3C  48 29 23 25 */	bl __construct_array
/* 800CFA40  38 7F 2A 4C */	addi r3, r31, 0x2a4c
/* 800CFA44  3C 80 80 0D */	lis r4, __ct__18daAlink_footData_cFv@ha /* 0x800CFCF4@ha */
/* 800CFA48  38 84 FC F4 */	addi r4, r4, __ct__18daAlink_footData_cFv@l /* 0x800CFCF4@l */
/* 800CFA4C  3C A0 80 0D */	lis r5, __dt__18daAlink_footData_cFv@ha /* 0x800CFCB8@ha */
/* 800CFA50  38 A5 FC B8 */	addi r5, r5, __dt__18daAlink_footData_cFv@l /* 0x800CFCB8@l */
/* 800CFA54  38 C0 00 A4 */	li r6, 0xa4
/* 800CFA58  38 E0 00 02 */	li r7, 2
/* 800CFA5C  48 29 23 05 */	bl __construct_array
/* 800CFA60  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800CFA64  48 1F 38 D9 */	bl __ct__14Z2CreatureLinkFv
/* 800CFA68  38 7F 2D 84 */	addi r3, r31, 0x2d84
/* 800CFA6C  48 1F B0 55 */	bl __ct__13Z2WolfHowlMgrFv
/* 800CFA70  38 7F 2E 44 */	addi r3, r31, 0x2e44
/* 800CFA74  4B F6 62 19 */	bl __ct__9dJntCol_cFv
/* 800CFA78  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 800CFA7C  38 A3 85 78 */	addi r5, r3, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 800CFA80  90 BF 2F 20 */	stw r5, 0x2f20(r31)
/* 800CFA84  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 800CFA88  38 83 85 54 */	addi r4, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 800CFA8C  90 9F 2F 20 */	stw r4, 0x2f20(r31)
/* 800CFA90  3C 60 80 3B */	lis r3, __vt__22dPa_hermiteEcallBack_c@ha /* 0x803A83A0@ha */
/* 800CFA94  38 03 83 A0 */	addi r0, r3, __vt__22dPa_hermiteEcallBack_c@l /* 0x803A83A0@l */
/* 800CFA98  90 1F 2F 20 */	stw r0, 0x2f20(r31)
/* 800CFA9C  90 BF 2F 38 */	stw r5, 0x2f38(r31)
/* 800CFAA0  90 9F 2F 38 */	stw r4, 0x2f38(r31)
/* 800CFAA4  90 1F 2F 38 */	stw r0, 0x2f38(r31)
/* 800CFAA8  38 7F 31 2A */	addi r3, r31, 0x312a
/* 800CFAAC  3C 80 80 11 */	lis r4, __ct__5csXyzFv@ha /* 0x80112C80@ha */
/* 800CFAB0  38 84 2C 80 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80112C80@l */
/* 800CFAB4  3C A0 80 02 */	lis r5, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 800CFAB8  38 A5 8B D0 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 800CFABC  38 C0 00 06 */	li r6, 6
/* 800CFAC0  38 E0 00 02 */	li r7, 2
/* 800CFAC4  48 29 22 9D */	bl __construct_array
/* 800CFAC8  38 7F 31 36 */	addi r3, r31, 0x3136
/* 800CFACC  3C 80 80 11 */	lis r4, __ct__5csXyzFv@ha /* 0x80112C80@ha */
/* 800CFAD0  38 84 2C 80 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80112C80@l */
/* 800CFAD4  3C A0 80 02 */	lis r5, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 800CFAD8  38 A5 8B D0 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 800CFADC  38 C0 00 06 */	li r6, 6
/* 800CFAE0  38 E0 00 02 */	li r7, 2
/* 800CFAE4  48 29 22 7D */	bl __construct_array
/* 800CFAE8  38 7F 31 42 */	addi r3, r31, 0x3142
/* 800CFAEC  3C 80 80 11 */	lis r4, __ct__5csXyzFv@ha /* 0x80112C80@ha */
/* 800CFAF0  38 84 2C 80 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80112C80@l */
/* 800CFAF4  3C A0 80 02 */	lis r5, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 800CFAF8  38 A5 8B D0 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 800CFAFC  38 C0 00 06 */	li r6, 6
/* 800CFB00  38 E0 00 04 */	li r7, 4
/* 800CFB04  48 29 22 5D */	bl __construct_array
/* 800CFB08  38 7F 32 A0 */	addi r3, r31, 0x32a0
/* 800CFB0C  3C 80 80 01 */	lis r4, __ct__13J3DGXColorS10Fv@ha /* 0x8000E460@ha */
/* 800CFB10  38 84 E4 60 */	addi r4, r4, __ct__13J3DGXColorS10Fv@l /* 0x8000E460@l */
/* 800CFB14  38 A0 00 00 */	li r5, 0
/* 800CFB18  38 C0 00 08 */	li r6, 8
/* 800CFB1C  38 E0 00 02 */	li r7, 2
/* 800CFB20  48 29 22 41 */	bl __construct_array
/* 800CFB24  38 7F 32 B0 */	addi r3, r31, 0x32b0
/* 800CFB28  3C 80 80 01 */	lis r4, __ct__13J3DGXColorS10Fv@ha /* 0x8000E460@ha */
/* 800CFB2C  38 84 E4 60 */	addi r4, r4, __ct__13J3DGXColorS10Fv@l /* 0x8000E460@l */
/* 800CFB30  38 A0 00 00 */	li r5, 0
/* 800CFB34  38 C0 00 08 */	li r6, 8
/* 800CFB38  38 E0 00 02 */	li r7, 2
/* 800CFB3C  48 29 22 25 */	bl __construct_array
/* 800CFB40  38 7F 32 D8 */	addi r3, r31, 0x32d8
/* 800CFB44  3C 80 80 0D */	lis r4, __ct__Q29daAlink_c14firePointEff_cFv@ha /* 0x800CFC78@ha */
/* 800CFB48  38 84 FC 78 */	addi r4, r4, __ct__Q29daAlink_c14firePointEff_cFv@l /* 0x800CFC78@l */
/* 800CFB4C  3C A0 80 0D */	lis r5, __dt__Q29daAlink_c14firePointEff_cFv@ha /* 0x800CFC3C@ha */
/* 800CFB50  38 A5 FC 3C */	addi r5, r5, __dt__Q29daAlink_c14firePointEff_cFv@l /* 0x800CFC3C@l */
/* 800CFB54  38 C0 00 30 */	li r6, 0x30
/* 800CFB58  38 E0 00 04 */	li r7, 4
/* 800CFB5C  48 29 22 05 */	bl __construct_array
/* 800CFB60  38 7F 35 4C */	addi r3, r31, 0x354c
/* 800CFB64  3C 80 80 01 */	lis r4, __ct__4cXyzFv@ha /* 0x800125DC@ha */
/* 800CFB68  38 84 25 DC */	addi r4, r4, __ct__4cXyzFv@l /* 0x800125DC@l */
/* 800CFB6C  3C A0 80 01 */	lis r5, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800CFB70  38 A5 91 84 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800CFB74  38 C0 00 0C */	li r6, 0xc
/* 800CFB78  38 E0 00 04 */	li r7, 4
/* 800CFB7C  48 29 21 E5 */	bl __construct_array
/* 800CFB80  38 7F 36 3C */	addi r3, r31, 0x363c
/* 800CFB84  3C 80 80 01 */	lis r4, __ct__4cXyzFv@ha /* 0x800125DC@ha */
/* 800CFB88  38 84 25 DC */	addi r4, r4, __ct__4cXyzFv@l /* 0x800125DC@l */
/* 800CFB8C  3C A0 80 01 */	lis r5, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800CFB90  38 A5 91 84 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800CFB94  38 C0 00 0C */	li r6, 0xc
/* 800CFB98  38 E0 00 04 */	li r7, 4
/* 800CFB9C  48 29 21 C5 */	bl __construct_array
/* 800CFBA0  38 7F 36 6C */	addi r3, r31, 0x366c
/* 800CFBA4  3C 80 80 01 */	lis r4, __ct__4cXyzFv@ha /* 0x800125DC@ha */
/* 800CFBA8  38 84 25 DC */	addi r4, r4, __ct__4cXyzFv@l /* 0x800125DC@l */
/* 800CFBAC  3C A0 80 01 */	lis r5, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800CFBB0  38 A5 91 84 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800CFBB4  38 C0 00 0C */	li r6, 0xc
/* 800CFBB8  38 E0 00 04 */	li r7, 4
/* 800CFBBC  48 29 21 A5 */	bl __construct_array
/* 800CFBC0  38 7F 36 C0 */	addi r3, r31, 0x36c0
/* 800CFBC4  3C 80 80 01 */	lis r4, __ct__4cXyzFv@ha /* 0x800125DC@ha */
/* 800CFBC8  38 84 25 DC */	addi r4, r4, __ct__4cXyzFv@l /* 0x800125DC@l */
/* 800CFBCC  3C A0 80 01 */	lis r5, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800CFBD0  38 A5 91 84 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800CFBD4  38 C0 00 0C */	li r6, 0xc
/* 800CFBD8  38 E0 00 04 */	li r7, 4
/* 800CFBDC  48 29 21 85 */	bl __construct_array
/* 800CFBE0  38 7F 36 F0 */	addi r3, r31, 0x36f0
/* 800CFBE4  3C 80 80 01 */	lis r4, __ct__4cXyzFv@ha /* 0x800125DC@ha */
/* 800CFBE8  38 84 25 DC */	addi r4, r4, __ct__4cXyzFv@l /* 0x800125DC@l */
/* 800CFBEC  3C A0 80 01 */	lis r5, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800CFBF0  38 A5 91 84 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800CFBF4  38 C0 00 0C */	li r6, 0xc
/* 800CFBF8  38 E0 00 04 */	li r7, 4
/* 800CFBFC  48 29 21 65 */	bl __construct_array
/* 800CFC00  38 7F 37 B0 */	addi r3, r31, 0x37b0
/* 800CFC04  3C 80 80 01 */	lis r4, __ct__4cXyzFv@ha /* 0x800125DC@ha */
/* 800CFC08  38 84 25 DC */	addi r4, r4, __ct__4cXyzFv@l /* 0x800125DC@l */
/* 800CFC0C  3C A0 80 01 */	lis r5, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800CFC10  38 A5 91 84 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800CFC14  38 C0 00 0C */	li r6, 0xc
/* 800CFC18  38 E0 00 02 */	li r7, 2
/* 800CFC1C  48 29 21 45 */	bl __construct_array
/* 800CFC20  7F E3 FB 78 */	mr r3, r31
/* 800CFC24  39 61 00 20 */	addi r11, r1, 0x20
/* 800CFC28  48 29 25 F5 */	bl _restgpr_26
/* 800CFC2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800CFC30  7C 08 03 A6 */	mtlr r0
/* 800CFC34  38 21 00 20 */	addi r1, r1, 0x20
/* 800CFC38  4E 80 00 20 */	blr 
