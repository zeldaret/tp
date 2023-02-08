lbl_80AA3D4C:
/* 80AA3D4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA3D50  7C 08 02 A6 */	mflr r0
/* 80AA3D54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA3D58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA3D5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA3D60  7C 7E 1B 78 */	mr r30, r3
/* 80AA3D64  3C 80 80 AA */	lis r4, lit_4109@ha /* 0x80AA698C@ha */
/* 80AA3D68  3B E4 69 8C */	addi r31, r4, lit_4109@l /* 0x80AA698C@l */
/* 80AA3D6C  38 00 00 00 */	li r0, 0
/* 80AA3D70  90 03 0B 00 */	stw r0, 0xb00(r3)
/* 80AA3D74  38 80 00 26 */	li r4, 0x26
/* 80AA3D78  80 A3 0B 00 */	lwz r5, 0xb00(r3)
/* 80AA3D7C  4B 6B 43 75 */	bl getAnmP__10daNpcCd2_cFii
/* 80AA3D80  7C 64 1B 78 */	mr r4, r3
/* 80AA3D84  7F C3 F3 78 */	mr r3, r30
/* 80AA3D88  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80AA3D8C  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80AA3D90  38 A0 00 02 */	li r5, 2
/* 80AA3D94  38 C0 00 00 */	li r6, 0
/* 80AA3D98  38 E0 FF FF */	li r7, -1
/* 80AA3D9C  4B 6B 51 65 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80AA3DA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AA3DA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AA3DA8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80AA3DAC  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80AA3DB0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AA3DB4  4B 7C CE 51 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80AA3DB8  B0 7E 0B 20 */	sth r3, 0xb20(r30)
/* 80AA3DBC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80AA3DC0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80AA3DC4  38 00 00 00 */	li r0, 0
/* 80AA3DC8  90 1E 0B 1C */	stw r0, 0xb1c(r30)
/* 80AA3DCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA3DD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA3DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA3DD8  7C 08 03 A6 */	mtlr r0
/* 80AA3DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA3DE0  4E 80 00 20 */	blr 
