lbl_80CC8CDC:
/* 80CC8CDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CC8CE0  7C 08 02 A6 */	mflr r0
/* 80CC8CE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CC8CE8  39 61 00 30 */	addi r11, r1, 0x30
/* 80CC8CEC  4B 69 94 F1 */	bl _savegpr_29
/* 80CC8CF0  7C 7D 1B 78 */	mr r29, r3
/* 80CC8CF4  80 03 06 34 */	lwz r0, 0x634(r3)
/* 80CC8CF8  28 00 00 00 */	cmplwi r0, 0
/* 80CC8CFC  41 82 00 8C */	beq lbl_80CC8D88
/* 80CC8D00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC8D04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC8D08  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80CC8D0C  7C 00 07 74 */	extsb r0, r0
/* 80CC8D10  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80CC8D14  7C 63 02 14 */	add r3, r3, r0
/* 80CC8D18  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 80CC8D1C  28 1F 00 00 */	cmplwi r31, 0
/* 80CC8D20  41 82 00 34 */	beq lbl_80CC8D54
/* 80CC8D24  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80CC8D28  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CC8D2C  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80CC8D30  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CC8D34  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80CC8D38  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CC8D3C  7F E3 FB 78 */	mr r3, r31
/* 80CC8D40  4B 4B 88 B1 */	bl dCam_getAngleX__FP12camera_class
/* 80CC8D44  7C 7E 1B 78 */	mr r30, r3
/* 80CC8D48  7F E3 FB 78 */	mr r3, r31
/* 80CC8D4C  4B 4B 88 81 */	bl dCam_getAngleY__FP12camera_class
/* 80CC8D50  7C 64 1B 78 */	mr r4, r3
lbl_80CC8D54:
/* 80CC8D54  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80CC8D58  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80CC8D5C  80 7D 06 34 */	lwz r3, 0x634(r29)
/* 80CC8D60  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CC8D64  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80CC8D68  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 80CC8D6C  D0 43 00 AC */	stfs f2, 0xac(r3)
/* 80CC8D70  7F C3 07 34 */	extsh r3, r30
/* 80CC8D74  7C 84 07 34 */	extsh r4, r4
/* 80CC8D78  38 A0 00 00 */	li r5, 0
/* 80CC8D7C  80 DD 06 34 */	lwz r6, 0x634(r29)
/* 80CC8D80  38 C6 00 68 */	addi r6, r6, 0x68
/* 80CC8D84  4B 5B 79 B1 */	bl JPAGetXYZRotateMtx__FsssPA4_f
lbl_80CC8D88:
/* 80CC8D88  39 61 00 30 */	addi r11, r1, 0x30
/* 80CC8D8C  4B 69 94 9D */	bl _restgpr_29
/* 80CC8D90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CC8D94  7C 08 03 A6 */	mtlr r0
/* 80CC8D98  38 21 00 30 */	addi r1, r1, 0x30
/* 80CC8D9C  4E 80 00 20 */	blr 
