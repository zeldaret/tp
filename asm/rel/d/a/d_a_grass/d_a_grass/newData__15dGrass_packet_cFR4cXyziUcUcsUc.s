lbl_80520770:
/* 80520770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80520774  7C 08 02 A6 */	mflr r0
/* 80520778  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052077C  39 61 00 20 */	addi r11, r1, 0x20
/* 80520780  4B E4 1A 5C */	b _savegpr_29
/* 80520784  7C 9D 23 78 */	mr r29, r4
/* 80520788  7C BE 2B 78 */	mr r30, r5
/* 8052078C  7C CC 33 78 */	mr r12, r6
/* 80520790  7C EB 3B 78 */	mr r11, r7
/* 80520794  7D 0A 43 78 */	mr r10, r8
/* 80520798  A0 C3 00 10 */	lhz r6, 0x10(r3)
/* 8052079C  1C 86 00 4C */	mulli r4, r6, 0x4c
/* 805207A0  3B E4 00 14 */	addi r31, r4, 0x14
/* 805207A4  7F E3 FA 14 */	add r31, r3, r31
/* 805207A8  7C C5 33 78 */	mr r5, r6
/* 805207AC  20 06 05 DC */	subfic r0, r6, 0x5dc
/* 805207B0  7C 09 03 A6 */	mtctr r0
/* 805207B4  2C 06 05 DC */	cmpwi r6, 0x5dc
/* 805207B8  40 80 00 40 */	bge lbl_805207F8
lbl_805207BC:
/* 805207BC  88 1F 00 00 */	lbz r0, 0(r31)
/* 805207C0  28 00 00 00 */	cmplwi r0, 0
/* 805207C4  40 82 00 28 */	bne lbl_805207EC
/* 805207C8  91 21 00 08 */	stw r9, 8(r1)
/* 805207CC  7F E4 FB 78 */	mr r4, r31
/* 805207D0  7F A6 EB 78 */	mr r6, r29
/* 805207D4  7F C7 F3 78 */	mr r7, r30
/* 805207D8  7D 88 63 78 */	mr r8, r12
/* 805207DC  7D 69 5B 78 */	mr r9, r11
/* 805207E0  4B FF FE 9D */	bl setData__15dGrass_packet_cFP13dGrass_data_ciR4cXyziUcUcsUc
/* 805207E4  7F E3 FB 78 */	mr r3, r31
/* 805207E8  48 00 00 64 */	b lbl_8052084C
lbl_805207EC:
/* 805207EC  3B FF 00 4C */	addi r31, r31, 0x4c
/* 805207F0  38 A5 00 01 */	addi r5, r5, 1
/* 805207F4  42 00 FF C8 */	bdnz lbl_805207BC
lbl_805207F8:
/* 805207F8  3B E3 00 14 */	addi r31, r3, 0x14
/* 805207FC  38 A0 00 00 */	li r5, 0
/* 80520800  7C C9 03 A6 */	mtctr r6
/* 80520804  2C 06 00 00 */	cmpwi r6, 0
/* 80520808  40 81 00 40 */	ble lbl_80520848
lbl_8052080C:
/* 8052080C  88 1F 00 00 */	lbz r0, 0(r31)
/* 80520810  28 00 00 00 */	cmplwi r0, 0
/* 80520814  40 82 00 28 */	bne lbl_8052083C
/* 80520818  91 21 00 08 */	stw r9, 8(r1)
/* 8052081C  7F E4 FB 78 */	mr r4, r31
/* 80520820  7F A6 EB 78 */	mr r6, r29
/* 80520824  7F C7 F3 78 */	mr r7, r30
/* 80520828  7D 88 63 78 */	mr r8, r12
/* 8052082C  7D 69 5B 78 */	mr r9, r11
/* 80520830  4B FF FE 4D */	bl setData__15dGrass_packet_cFP13dGrass_data_ciR4cXyziUcUcsUc
/* 80520834  7F E3 FB 78 */	mr r3, r31
/* 80520838  48 00 00 14 */	b lbl_8052084C
lbl_8052083C:
/* 8052083C  3B FF 00 4C */	addi r31, r31, 0x4c
/* 80520840  38 A5 00 01 */	addi r5, r5, 1
/* 80520844  42 00 FF C8 */	bdnz lbl_8052080C
lbl_80520848:
/* 80520848  38 60 00 00 */	li r3, 0
lbl_8052084C:
/* 8052084C  39 61 00 20 */	addi r11, r1, 0x20
/* 80520850  4B E4 19 D8 */	b _restgpr_29
/* 80520854  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80520858  7C 08 03 A6 */	mtlr r0
/* 8052085C  38 21 00 20 */	addi r1, r1, 0x20
/* 80520860  4E 80 00 20 */	blr 
