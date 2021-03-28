lbl_80CCB364:
/* 80CCB364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCB368  7C 08 02 A6 */	mflr r0
/* 80CCB36C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCB370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCB374  93 C1 00 08 */	stw r30, 8(r1)
/* 80CCB378  7C 7F 1B 78 */	mr r31, r3
/* 80CCB37C  4B 34 D7 E8 */	b __ct__10fopAc_ac_cFv
/* 80CCB380  3C 60 80 CD */	lis r3, __vt__17daObjSCannonTen_c@ha
/* 80CCB384  38 03 CF 14 */	addi r0, r3, __vt__17daObjSCannonTen_c@l
/* 80CCB388  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80CCB38C  3B DF 05 78 */	addi r30, r31, 0x578
/* 80CCB390  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80CCB394  38 03 CF 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80CCB398  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80CCB39C  7F C3 F3 78 */	mr r3, r30
/* 80CCB3A0  38 80 00 00 */	li r4, 0
/* 80CCB3A4  4B 65 D0 58 */	b init__12J3DFrameCtrlFs
/* 80CCB3A8  38 00 00 00 */	li r0, 0
/* 80CCB3AC  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80CCB3B0  38 7F 05 98 */	addi r3, r31, 0x598
/* 80CCB3B4  4B 59 CC C0 */	b __ct__13cBgS_PolyInfoFv
/* 80CCB3B8  38 00 00 00 */	li r0, 0
/* 80CCB3BC  90 1F 05 94 */	stw r0, 0x594(r31)
/* 80CCB3C0  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 80CCB3C4  38 80 00 00 */	li r4, 0
/* 80CCB3C8  38 A0 00 0C */	li r5, 0xc
/* 80CCB3CC  4B 33 80 8C */	b memset
/* 80CCB3D0  38 00 00 00 */	li r0, 0
/* 80CCB3D4  90 1F 06 00 */	stw r0, 0x600(r31)
/* 80CCB3D8  7F E3 FB 78 */	mr r3, r31
/* 80CCB3DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCB3E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CCB3E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCB3E8  7C 08 03 A6 */	mtlr r0
/* 80CCB3EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCB3F0  4E 80 00 20 */	blr 
