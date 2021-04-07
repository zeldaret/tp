lbl_80BA0FA4:
/* 80BA0FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA0FA8  7C 08 02 A6 */	mflr r0
/* 80BA0FAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA0FB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA0FB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA0FB8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BA0FBC  7C 9F 23 78 */	mr r31, r4
/* 80BA0FC0  41 82 01 3C */	beq lbl_80BA10FC
/* 80BA0FC4  3C 60 80 BA */	lis r3, __vt__14daObjYtaihou_c@ha /* 0x80BA12C8@ha */
/* 80BA0FC8  38 63 12 C8 */	addi r3, r3, __vt__14daObjYtaihou_c@l /* 0x80BA12C8@l */
/* 80BA0FCC  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80BA0FD0  38 03 00 28 */	addi r0, r3, 0x28
/* 80BA0FD4  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80BA0FD8  34 1E 06 28 */	addic. r0, r30, 0x628
/* 80BA0FDC  41 82 00 84 */	beq lbl_80BA1060
/* 80BA0FE0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BA0FE4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BA0FE8  90 7E 06 64 */	stw r3, 0x664(r30)
/* 80BA0FEC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BA0FF0  90 1E 07 48 */	stw r0, 0x748(r30)
/* 80BA0FF4  38 03 00 84 */	addi r0, r3, 0x84
/* 80BA0FF8  90 1E 07 60 */	stw r0, 0x760(r30)
/* 80BA0FFC  34 1E 07 2C */	addic. r0, r30, 0x72c
/* 80BA1000  41 82 00 54 */	beq lbl_80BA1054
/* 80BA1004  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BA1008  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BA100C  90 7E 07 48 */	stw r3, 0x748(r30)
/* 80BA1010  38 03 00 58 */	addi r0, r3, 0x58
/* 80BA1014  90 1E 07 60 */	stw r0, 0x760(r30)
/* 80BA1018  34 1E 07 4C */	addic. r0, r30, 0x74c
/* 80BA101C  41 82 00 10 */	beq lbl_80BA102C
/* 80BA1020  3C 60 80 BA */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BA1298@ha */
/* 80BA1024  38 03 12 98 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BA1298@l */
/* 80BA1028  90 1E 07 60 */	stw r0, 0x760(r30)
lbl_80BA102C:
/* 80BA102C  34 1E 07 2C */	addic. r0, r30, 0x72c
/* 80BA1030  41 82 00 24 */	beq lbl_80BA1054
/* 80BA1034  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BA1038  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BA103C  90 1E 07 48 */	stw r0, 0x748(r30)
/* 80BA1040  34 1E 07 2C */	addic. r0, r30, 0x72c
/* 80BA1044  41 82 00 10 */	beq lbl_80BA1054
/* 80BA1048  3C 60 80 BA */	lis r3, __vt__8cM3dGAab@ha /* 0x80BA12A4@ha */
/* 80BA104C  38 03 12 A4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BA12A4@l */
/* 80BA1050  90 1E 07 44 */	stw r0, 0x744(r30)
lbl_80BA1054:
/* 80BA1054  38 7E 06 28 */	addi r3, r30, 0x628
/* 80BA1058  38 80 00 00 */	li r4, 0
/* 80BA105C  4B 4E 30 89 */	bl __dt__12dCcD_GObjInfFv
lbl_80BA1060:
/* 80BA1060  34 1E 05 EC */	addic. r0, r30, 0x5ec
/* 80BA1064  41 82 00 54 */	beq lbl_80BA10B8
/* 80BA1068  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BA106C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BA1070  90 7E 06 04 */	stw r3, 0x604(r30)
/* 80BA1074  38 03 00 20 */	addi r0, r3, 0x20
/* 80BA1078  90 1E 06 08 */	stw r0, 0x608(r30)
/* 80BA107C  34 1E 06 08 */	addic. r0, r30, 0x608
/* 80BA1080  41 82 00 24 */	beq lbl_80BA10A4
/* 80BA1084  3C 60 80 BA */	lis r3, __vt__10dCcD_GStts@ha /* 0x80BA128C@ha */
/* 80BA1088  38 03 12 8C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80BA128C@l */
/* 80BA108C  90 1E 06 08 */	stw r0, 0x608(r30)
/* 80BA1090  34 1E 06 08 */	addic. r0, r30, 0x608
/* 80BA1094  41 82 00 10 */	beq lbl_80BA10A4
/* 80BA1098  3C 60 80 BA */	lis r3, __vt__10cCcD_GStts@ha /* 0x80BA1280@ha */
/* 80BA109C  38 03 12 80 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80BA1280@l */
/* 80BA10A0  90 1E 06 08 */	stw r0, 0x608(r30)
lbl_80BA10A4:
/* 80BA10A4  34 1E 05 EC */	addic. r0, r30, 0x5ec
/* 80BA10A8  41 82 00 10 */	beq lbl_80BA10B8
/* 80BA10AC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BA10B0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BA10B4  90 1E 06 04 */	stw r0, 0x604(r30)
lbl_80BA10B8:
/* 80BA10B8  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 80BA10BC  41 82 00 10 */	beq lbl_80BA10CC
/* 80BA10C0  3C 60 80 BA */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80BA12B0@ha */
/* 80BA10C4  38 03 12 B0 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80BA12B0@l */
/* 80BA10C8  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80BA10CC:
/* 80BA10CC  28 1E 00 00 */	cmplwi r30, 0
/* 80BA10D0  41 82 00 1C */	beq lbl_80BA10EC
/* 80BA10D4  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha /* 0x803AB9A0@ha */
/* 80BA10D8  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l /* 0x803AB9A0@l */
/* 80BA10DC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BA10E0  7F C3 F3 78 */	mr r3, r30
/* 80BA10E4  38 80 00 00 */	li r4, 0
/* 80BA10E8  4B 47 7B A5 */	bl __dt__10fopAc_ac_cFv
lbl_80BA10EC:
/* 80BA10EC  7F E0 07 35 */	extsh. r0, r31
/* 80BA10F0  40 81 00 0C */	ble lbl_80BA10FC
/* 80BA10F4  7F C3 F3 78 */	mr r3, r30
/* 80BA10F8  4B 72 DC 45 */	bl __dl__FPv
lbl_80BA10FC:
/* 80BA10FC  7F C3 F3 78 */	mr r3, r30
/* 80BA1100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA1104  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA1108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA110C  7C 08 03 A6 */	mtlr r0
/* 80BA1110  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA1114  4E 80 00 20 */	blr 
