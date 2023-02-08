lbl_80C16D50:
/* 80C16D50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C16D54  7C 08 02 A6 */	mflr r0
/* 80C16D58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C16D5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C16D60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C16D64  7C 7E 1B 78 */	mr r30, r3
/* 80C16D68  3C 60 80 C1 */	lis r3, s_CcDCyl__14daObjHBarrel_c@ha /* 0x80C172FC@ha */
/* 80C16D6C  3B E3 72 FC */	addi r31, r3, s_CcDCyl__14daObjHBarrel_c@l /* 0x80C172FC@l */
/* 80C16D70  38 7E 05 78 */	addi r3, r30, 0x578
/* 80C16D74  38 80 00 FF */	li r4, 0xff
/* 80C16D78  38 A0 00 00 */	li r5, 0
/* 80C16D7C  7F C6 F3 78 */	mr r6, r30
/* 80C16D80  4B 46 CA E1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C16D84  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80C16D88  38 9F 00 00 */	addi r4, r31, 0
/* 80C16D8C  4B 46 DB 29 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C16D90  38 1E 05 78 */	addi r0, r30, 0x578
/* 80C16D94  90 1E 05 F8 */	stw r0, 0x5f8(r30)
/* 80C16D98  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80C16D9C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C16DA0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C16DA4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C16DA8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C16DAC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C16DB0  38 7E 06 D8 */	addi r3, r30, 0x6d8
/* 80C16DB4  38 81 00 08 */	addi r4, r1, 8
/* 80C16DB8  4B 65 84 25 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C16DBC  38 7E 06 D8 */	addi r3, r30, 0x6d8
/* 80C16DC0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C16DC4  4B 65 84 35 */	bl SetH__8cM3dGCylFf
/* 80C16DC8  38 7E 06 D8 */	addi r3, r30, 0x6d8
/* 80C16DCC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C16DD0  4B 65 84 31 */	bl SetR__8cM3dGCylFf
/* 80C16DD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C16DD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C16DDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C16DE0  7C 08 03 A6 */	mtlr r0
/* 80C16DE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C16DE8  4E 80 00 20 */	blr 
