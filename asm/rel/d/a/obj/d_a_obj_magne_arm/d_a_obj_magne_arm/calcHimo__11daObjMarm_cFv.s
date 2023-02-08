lbl_80591C38:
/* 80591C38  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80591C3C  7C 08 02 A6 */	mflr r0
/* 80591C40  90 01 00 84 */	stw r0, 0x84(r1)
/* 80591C44  39 61 00 80 */	addi r11, r1, 0x80
/* 80591C48  4B DD 05 8D */	bl _savegpr_27
/* 80591C4C  7C 7F 1B 78 */	mr r31, r3
/* 80591C50  3C 80 80 59 */	lis r4, l_magne_scale@ha /* 0x80592848@ha */
/* 80591C54  3B A4 28 48 */	addi r29, r4, l_magne_scale@l /* 0x80592848@l */
/* 80591C58  38 81 00 14 */	addi r4, r1, 0x14
/* 80591C5C  4B FF D9 B5 */	bl getRopeStartPos__11daObjMarm_cFP4cXyz
/* 80591C60  7F E3 FB 78 */	mr r3, r31
/* 80591C64  38 81 00 08 */	addi r4, r1, 8
/* 80591C68  4B FF D8 9D */	bl getFpartsOffset__11daObjMarm_cFP4cXyz
/* 80591C6C  80 7F 0A 20 */	lwz r3, 0xa20(r31)
/* 80591C70  80 63 00 38 */	lwz r3, 0x38(r3)
/* 80591C74  80 63 00 00 */	lwz r3, 0(r3)
/* 80591C78  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80591C7C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80591C80  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80591C84  D0 03 00 04 */	stfs f0, 4(r3)
/* 80591C88  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80591C8C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80591C90  38 80 00 01 */	li r4, 1
/* 80591C94  38 63 00 0C */	addi r3, r3, 0xc
/* 80591C98  48 00 00 24 */	b lbl_80591CBC
lbl_80591C9C:
/* 80591C9C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80591CA0  D0 03 00 00 */	stfs f0, 0(r3)
/* 80591CA4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80591CA8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80591CAC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80591CB0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80591CB4  38 84 00 01 */	addi r4, r4, 1
/* 80591CB8  38 63 00 0C */	addi r3, r3, 0xc
lbl_80591CBC:
/* 80591CBC  88 1F 0A 28 */	lbz r0, 0xa28(r31)
/* 80591CC0  7C 04 00 00 */	cmpw r4, r0
/* 80591CC4  41 80 FF D8 */	blt lbl_80591C9C
/* 80591CC8  7F E3 FB 78 */	mr r3, r31
/* 80591CCC  38 81 00 14 */	addi r4, r1, 0x14
/* 80591CD0  4B FF D7 9D */	bl getEpartsOffset__11daObjMarm_cFP4cXyz
/* 80591CD4  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 80591CD8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80591CDC  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80591CE0  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 80591CE4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80591CE8  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80591CEC  C0 1D 00 F8 */	lfs f0, 0xf8(r29)
/* 80591CF0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80591CF4  C0 1D 00 FC */	lfs f0, 0xfc(r29)
/* 80591CF8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80591CFC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80591D00  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80591D04  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80591D08  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80591D0C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80591D10  C0 1D 01 04 */	lfs f0, 0x104(r29)
/* 80591D14  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80591D18  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 80591D1C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80591D20  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80591D24  C0 1D 01 0C */	lfs f0, 0x10c(r29)
/* 80591D28  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80591D2C  C0 1D 01 10 */	lfs f0, 0x110(r29)
/* 80591D30  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80591D34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80591D38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80591D3C  A8 9F 09 FE */	lha r4, 0x9fe(r31)
/* 80591D40  A8 1F 0A 30 */	lha r0, 0xa30(r31)
/* 80591D44  7C 04 02 14 */	add r0, r4, r0
/* 80591D48  7C 04 07 34 */	extsh r4, r0
/* 80591D4C  4B A7 A6 91 */	bl mDoMtx_YrotS__FPA4_fs
/* 80591D50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80591D54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80591D58  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80591D5C  4B A7 A6 D9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80591D60  3B 60 00 00 */	li r27, 0
/* 80591D64  3B C0 00 00 */	li r30, 0
/* 80591D68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80591D6C  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80591D70  48 00 00 34 */	b lbl_80591DA4
lbl_80591D74:
/* 80591D74  3B 81 00 20 */	addi r28, r1, 0x20
/* 80591D78  7F 9C F2 14 */	add r28, r28, r30
/* 80591D7C  7F A3 EB 78 */	mr r3, r29
/* 80591D80  7F 84 E3 78 */	mr r4, r28
/* 80591D84  7F 85 E3 78 */	mr r5, r28
/* 80591D88  4B DB 4F E5 */	bl PSMTXMultVec
/* 80591D8C  7F 83 E3 78 */	mr r3, r28
/* 80591D90  38 81 00 14 */	addi r4, r1, 0x14
/* 80591D94  7F 85 E3 78 */	mr r5, r28
/* 80591D98  4B DB 52 F9 */	bl PSVECAdd
/* 80591D9C  3B 7B 00 01 */	addi r27, r27, 1
/* 80591DA0  3B DE 00 0C */	addi r30, r30, 0xc
lbl_80591DA4:
/* 80591DA4  88 1F 0A 29 */	lbz r0, 0xa29(r31)
/* 80591DA8  7C 1B 00 00 */	cmpw r27, r0
/* 80591DAC  41 80 FF C8 */	blt lbl_80591D74
/* 80591DB0  80 7F 0A 24 */	lwz r3, 0xa24(r31)
/* 80591DB4  80 63 00 38 */	lwz r3, 0x38(r3)
/* 80591DB8  80 A3 00 00 */	lwz r5, 0(r3)
/* 80591DBC  38 C0 00 00 */	li r6, 0
/* 80591DC0  38 60 00 00 */	li r3, 0
/* 80591DC4  48 00 00 30 */	b lbl_80591DF4
lbl_80591DC8:
/* 80591DC8  38 81 00 20 */	addi r4, r1, 0x20
/* 80591DCC  7C 84 1A 14 */	add r4, r4, r3
/* 80591DD0  C0 04 00 00 */	lfs f0, 0(r4)
/* 80591DD4  D0 05 00 00 */	stfs f0, 0(r5)
/* 80591DD8  C0 04 00 04 */	lfs f0, 4(r4)
/* 80591DDC  D0 05 00 04 */	stfs f0, 4(r5)
/* 80591DE0  C0 04 00 08 */	lfs f0, 8(r4)
/* 80591DE4  D0 05 00 08 */	stfs f0, 8(r5)
/* 80591DE8  38 C6 00 01 */	addi r6, r6, 1
/* 80591DEC  38 63 00 0C */	addi r3, r3, 0xc
/* 80591DF0  38 A5 00 0C */	addi r5, r5, 0xc
lbl_80591DF4:
/* 80591DF4  88 1F 0A 29 */	lbz r0, 0xa29(r31)
/* 80591DF8  7C 06 00 00 */	cmpw r6, r0
/* 80591DFC  41 80 FF CC */	blt lbl_80591DC8
/* 80591E00  39 61 00 80 */	addi r11, r1, 0x80
/* 80591E04  4B DD 04 1D */	bl _restgpr_27
/* 80591E08  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80591E0C  7C 08 03 A6 */	mtlr r0
/* 80591E10  38 21 00 80 */	addi r1, r1, 0x80
/* 80591E14  4E 80 00 20 */	blr 
