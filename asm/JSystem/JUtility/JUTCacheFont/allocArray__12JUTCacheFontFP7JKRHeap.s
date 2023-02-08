lbl_802DD804:
/* 802DD804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DD808  7C 08 02 A6 */	mflr r0
/* 802DD80C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DD810  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DD814  7C 7F 1B 78 */	mr r31, r3
/* 802DD818  A0 A3 00 64 */	lhz r5, 0x64(r3)
/* 802DD81C  A0 63 00 60 */	lhz r3, 0x60(r3)
/* 802DD820  A0 1F 00 62 */	lhz r0, 0x62(r31)
/* 802DD824  7C 00 2A 14 */	add r0, r0, r5
/* 802DD828  7C 03 02 14 */	add r0, r3, r0
/* 802DD82C  54 03 10 3A */	slwi r3, r0, 2
/* 802DD830  38 A0 00 00 */	li r5, 0
/* 802DD834  4B FF 14 DD */	bl __nwa__FUlP7JKRHeapi
/* 802DD838  90 7F 00 50 */	stw r3, 0x50(r31)
/* 802DD83C  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802DD840  28 03 00 00 */	cmplwi r3, 0
/* 802DD844  40 82 00 0C */	bne lbl_802DD850
/* 802DD848  38 60 00 00 */	li r3, 0
/* 802DD84C  48 00 00 8C */	b lbl_802DD8D8
lbl_802DD850:
/* 802DD850  7C 65 1B 78 */	mr r5, r3
/* 802DD854  A0 1F 00 60 */	lhz r0, 0x60(r31)
/* 802DD858  28 00 00 00 */	cmplwi r0, 0
/* 802DD85C  41 82 00 14 */	beq lbl_802DD870
/* 802DD860  90 7F 00 54 */	stw r3, 0x54(r31)
/* 802DD864  A0 1F 00 60 */	lhz r0, 0x60(r31)
/* 802DD868  54 00 10 3A */	slwi r0, r0, 2
/* 802DD86C  7C A3 02 14 */	add r5, r3, r0
lbl_802DD870:
/* 802DD870  A0 1F 00 62 */	lhz r0, 0x62(r31)
/* 802DD874  28 00 00 00 */	cmplwi r0, 0
/* 802DD878  41 82 00 4C */	beq lbl_802DD8C4
/* 802DD87C  90 BF 00 58 */	stw r5, 0x58(r31)
/* 802DD880  A0 1F 00 62 */	lhz r0, 0x62(r31)
/* 802DD884  54 00 10 3A */	slwi r0, r0, 2
/* 802DD888  7C A5 02 14 */	add r5, r5, r0
/* 802DD88C  38 C0 00 00 */	li r6, 0
/* 802DD890  38 60 00 00 */	li r3, 0
/* 802DD894  48 00 00 24 */	b lbl_802DD8B8
lbl_802DD898:
/* 802DD898  80 9F 00 90 */	lwz r4, 0x90(r31)
/* 802DD89C  80 1F 00 94 */	lwz r0, 0x94(r31)
/* 802DD8A0  7C 00 31 D6 */	mullw r0, r0, r6
/* 802DD8A4  7C 04 02 14 */	add r0, r4, r0
/* 802DD8A8  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 802DD8AC  7C 04 19 2E */	stwx r0, r4, r3
/* 802DD8B0  38 C6 00 01 */	addi r6, r6, 1
/* 802DD8B4  38 63 00 04 */	addi r3, r3, 4
lbl_802DD8B8:
/* 802DD8B8  A0 1F 00 62 */	lhz r0, 0x62(r31)
/* 802DD8BC  7C 06 00 00 */	cmpw r6, r0
/* 802DD8C0  41 80 FF D8 */	blt lbl_802DD898
lbl_802DD8C4:
/* 802DD8C4  A0 1F 00 64 */	lhz r0, 0x64(r31)
/* 802DD8C8  28 00 00 00 */	cmplwi r0, 0
/* 802DD8CC  41 82 00 08 */	beq lbl_802DD8D4
/* 802DD8D0  90 BF 00 5C */	stw r5, 0x5c(r31)
lbl_802DD8D4:
/* 802DD8D4  38 60 00 01 */	li r3, 1
lbl_802DD8D8:
/* 802DD8D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DD8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DD8E0  7C 08 03 A6 */	mtlr r0
/* 802DD8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 802DD8E8  4E 80 00 20 */	blr 
