lbl_8001D7A0:
/* 8001D7A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001D7A4  7C 08 02 A6 */	mflr r0
/* 8001D7A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001D7AC  7C 65 1B 78 */	mr r5, r3
/* 8001D7B0  38 60 00 00 */	li r3, 0
/* 8001D7B4  98 61 00 08 */	stb r3, 8(r1)
/* 8001D7B8  38 00 FF FF */	li r0, -1
/* 8001D7BC  B0 01 00 26 */	sth r0, 0x26(r1)
/* 8001D7C0  38 00 00 0B */	li r0, 0xb
/* 8001D7C4  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8001D7C8  98 61 00 2A */	stb r3, 0x2a(r1)
/* 8001D7CC  B0 81 00 26 */	sth r4, 0x26(r1)
/* 8001D7D0  38 61 00 08 */	addi r3, r1, 8
/* 8001D7D4  7C A4 2B 78 */	mr r4, r5
/* 8001D7D8  48 34 B3 55 */	bl strcpy
/* 8001D7DC  38 61 00 08 */	addi r3, r1, 8
/* 8001D7E0  38 80 00 3A */	li r4, 0x3a
/* 8001D7E4  48 34 B1 41 */	bl strchr
/* 8001D7E8  28 03 00 00 */	cmplwi r3, 0
/* 8001D7EC  41 82 00 5C */	beq lbl_8001D848
/* 8001D7F0  38 00 00 00 */	li r0, 0
/* 8001D7F4  98 03 00 00 */	stb r0, 0(r3)
/* 8001D7F8  B0 01 00 26 */	sth r0, 0x26(r1)
/* 8001D7FC  38 83 00 01 */	addi r4, r3, 1
/* 8001D800  48 00 00 3C */	b lbl_8001D83C
lbl_8001D804:
/* 8001D804  7C 63 07 74 */	extsb r3, r3
/* 8001D808  2C 03 00 30 */	cmpwi r3, 0x30
/* 8001D80C  41 80 00 0C */	blt lbl_8001D818
/* 8001D810  2C 03 00 39 */	cmpwi r3, 0x39
/* 8001D814  40 81 00 10 */	ble lbl_8001D824
lbl_8001D818:
/* 8001D818  38 00 FF FF */	li r0, -1
/* 8001D81C  B0 01 00 26 */	sth r0, 0x26(r1)
/* 8001D820  48 00 00 28 */	b lbl_8001D848
lbl_8001D824:
/* 8001D824  A8 01 00 26 */	lha r0, 0x26(r1)
/* 8001D828  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8001D82C  7C 63 02 14 */	add r3, r3, r0
/* 8001D830  38 03 FF D0 */	addi r0, r3, -48
/* 8001D834  B0 01 00 26 */	sth r0, 0x26(r1)
/* 8001D838  38 84 00 01 */	addi r4, r4, 1
lbl_8001D83C:
/* 8001D83C  88 64 00 00 */	lbz r3, 0(r4)
/* 8001D840  7C 60 07 75 */	extsb. r0, r3
/* 8001D844  40 82 FF C0 */	bne lbl_8001D804
lbl_8001D848:
/* 8001D848  38 61 00 08 */	addi r3, r1, 8
/* 8001D84C  48 00 75 75 */	bl dStage_searchName__FPCc
/* 8001D850  28 03 00 00 */	cmplwi r3, 0
/* 8001D854  40 82 00 0C */	bne lbl_8001D860
/* 8001D858  38 60 00 00 */	li r3, 0
/* 8001D85C  48 00 00 24 */	b lbl_8001D880
lbl_8001D860:
/* 8001D860  A8 03 00 08 */	lha r0, 8(r3)
/* 8001D864  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8001D868  88 03 00 0A */	lbz r0, 0xa(r3)
/* 8001D86C  98 01 00 2A */	stb r0, 0x2a(r1)
/* 8001D870  3C 60 80 02 */	lis r3, fopAcM_findObject4EventCB__FP10fopAc_ac_cPv@ha /* 0x8001D6F0@ha */
/* 8001D874  38 63 D6 F0 */	addi r3, r3, fopAcM_findObject4EventCB__FP10fopAc_ac_cPv@l /* 0x8001D6F0@l */
/* 8001D878  38 81 00 08 */	addi r4, r1, 8
/* 8001D87C  4B FF BF 7D */	bl fopAcIt_Judge__FPFPvPv_PvPv
lbl_8001D880:
/* 8001D880  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001D884  7C 08 03 A6 */	mtlr r0
/* 8001D888  38 21 00 30 */	addi r1, r1, 0x30
/* 8001D88C  4E 80 00 20 */	blr 
