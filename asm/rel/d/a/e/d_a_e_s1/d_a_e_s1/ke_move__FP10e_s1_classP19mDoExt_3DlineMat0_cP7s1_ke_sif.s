lbl_8077DBB8:
/* 8077DBB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8077DBBC  7C 08 02 A6 */	mflr r0
/* 8077DBC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8077DBC4  39 61 00 20 */	addi r11, r1, 0x20
/* 8077DBC8  4B BE 46 08 */	b _savegpr_26
/* 8077DBCC  7C 9C 23 78 */	mr r28, r4
/* 8077DBD0  7C BA 2B 78 */	mr r26, r5
/* 8077DBD4  7C DB 33 78 */	mr r27, r6
/* 8077DBD8  3C 80 80 78 */	lis r4, lit_3903@ha
/* 8077DBDC  3B C4 0D C4 */	addi r30, r4, lit_3903@l
/* 8077DBE0  7F 44 D3 78 */	mr r4, r26
/* 8077DBE4  7F 65 DB 78 */	mr r5, r27
/* 8077DBE8  4B FF FC C1 */	bl ke_control__FP10e_s1_classP7s1_ke_sif
/* 8077DBEC  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 8077DBF0  57 60 28 34 */	slwi r0, r27, 5
/* 8077DBF4  7F A3 00 2E */	lwzx r29, r3, r0
/* 8077DBF8  7C 63 02 14 */	add r3, r3, r0
/* 8077DBFC  83 83 00 04 */	lwz r28, 4(r3)
/* 8077DC00  3B 60 00 00 */	li r27, 0
/* 8077DC04  3B E0 00 00 */	li r31, 0
lbl_8077DC08:
/* 8077DC08  7C 7A FA 14 */	add r3, r26, r31
/* 8077DC0C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8077DC10  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8077DC14  C0 03 00 04 */	lfs f0, 4(r3)
/* 8077DC18  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8077DC1C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8077DC20  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8077DC24  2C 1B 00 0E */	cmpwi r27, 0xe
/* 8077DC28  40 82 00 10 */	bne lbl_8077DC38
/* 8077DC2C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 8077DC30  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8077DC34  48 00 00 2C */	b lbl_8077DC60
lbl_8077DC38:
/* 8077DC38  2C 1B 00 05 */	cmpwi r27, 5
/* 8077DC3C  40 80 00 10 */	bge lbl_8077DC4C
/* 8077DC40  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 8077DC44  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8077DC48  48 00 00 18 */	b lbl_8077DC60
lbl_8077DC4C:
/* 8077DC4C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8077DC50  4B AE 9E 7C */	b cM_rndF2__Ff
/* 8077DC54  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 8077DC58  EC 00 08 2A */	fadds f0, f0, f1
/* 8077DC5C  D0 1C 00 00 */	stfs f0, 0(r28)
lbl_8077DC60:
/* 8077DC60  3B 7B 00 01 */	addi r27, r27, 1
/* 8077DC64  2C 1B 00 10 */	cmpwi r27, 0x10
/* 8077DC68  3B FF 00 0C */	addi r31, r31, 0xc
/* 8077DC6C  3B BD 00 0C */	addi r29, r29, 0xc
/* 8077DC70  3B 9C 00 04 */	addi r28, r28, 4
/* 8077DC74  41 80 FF 94 */	blt lbl_8077DC08
/* 8077DC78  39 61 00 20 */	addi r11, r1, 0x20
/* 8077DC7C  4B BE 45 A0 */	b _restgpr_26
/* 8077DC80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8077DC84  7C 08 03 A6 */	mtlr r0
/* 8077DC88  38 21 00 20 */	addi r1, r1, 0x20
/* 8077DC8C  4E 80 00 20 */	blr 
