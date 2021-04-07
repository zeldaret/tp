lbl_80584CFC:
/* 80584CFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80584D00  7C 08 02 A6 */	mflr r0
/* 80584D04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80584D08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80584D0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80584D10  7C 7E 1B 78 */	mr r30, r3
/* 80584D14  3C 60 80 58 */	lis r3, lit_3970@ha /* 0x80585620@ha */
/* 80584D18  3B E3 56 20 */	addi r31, r3, lit_3970@l /* 0x80585620@l */
/* 80584D1C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80584D20  D0 01 00 08 */	stfs f0, 8(r1)
/* 80584D24  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80584D28  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80584D2C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80584D30  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80584D34  80 1E 06 0C */	lwz r0, 0x60c(r30)
/* 80584D38  2C 00 00 00 */	cmpwi r0, 0
/* 80584D3C  40 82 00 44 */	bne lbl_80584D80
/* 80584D40  80 7E 06 1C */	lwz r3, 0x61c(r30)
/* 80584D44  70 60 0F 0F */	andi. r0, r3, 0xf0f
/* 80584D48  41 82 00 14 */	beq lbl_80584D5C
/* 80584D4C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80584D50  EC 01 00 2A */	fadds f0, f1, f0
/* 80584D54  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80584D58  48 00 00 28 */	b lbl_80584D80
lbl_80584D5C:
/* 80584D5C  70 60 30 F0 */	andi. r0, r3, 0x30f0
/* 80584D60  41 82 00 14 */	beq lbl_80584D74
/* 80584D64  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80584D68  EC 01 00 2A */	fadds f0, f1, f0
/* 80584D6C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80584D70  48 00 00 10 */	b lbl_80584D80
lbl_80584D74:
/* 80584D74  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80584D78  EC 01 00 2A */	fadds f0, f1, f0
/* 80584D7C  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_80584D80:
/* 80584D80  38 7E 09 A8 */	addi r3, r30, 0x9a8
/* 80584D84  38 81 00 08 */	addi r4, r1, 8
/* 80584D88  4B CE A8 C1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80584D8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80584D90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80584D94  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80584D98  28 00 00 00 */	cmplwi r0, 0
/* 80584D9C  41 82 00 1C */	beq lbl_80584DB8
/* 80584DA0  38 7E 09 A8 */	addi r3, r30, 0x9a8
/* 80584DA4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80584DA8  C0 1E 06 00 */	lfs f0, 0x600(r30)
/* 80584DAC  EC 21 00 2A */	fadds f1, f1, f0
/* 80584DB0  4B CE A9 59 */	bl SetR__8cM3dGSphFf
/* 80584DB4  48 00 00 10 */	b lbl_80584DC4
lbl_80584DB8:
/* 80584DB8  38 7E 09 A8 */	addi r3, r30, 0x9a8
/* 80584DBC  C0 3E 06 00 */	lfs f1, 0x600(r30)
/* 80584DC0  4B CE A9 49 */	bl SetR__8cM3dGSphFf
lbl_80584DC4:
/* 80584DC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80584DC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80584DCC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80584DD0  38 9E 08 84 */	addi r4, r30, 0x884
/* 80584DD4  4B CD FD D5 */	bl Set__4cCcSFP8cCcD_Obj
/* 80584DD8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80584DDC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80584DE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80584DE4  7C 08 03 A6 */	mtlr r0
/* 80584DE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80584DEC  4E 80 00 20 */	blr 
