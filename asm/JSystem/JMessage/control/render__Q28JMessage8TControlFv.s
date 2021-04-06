lbl_802A76BC:
/* 802A76BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A76C0  7C 08 02 A6 */	mflr r0
/* 802A76C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A76C8  39 61 00 20 */	addi r11, r1, 0x20
/* 802A76CC  48 0B AB 0D */	bl _savegpr_28
/* 802A76D0  7C 7F 1B 78 */	mr r31, r3
/* 802A76D4  38 60 00 00 */	li r3, 0
/* 802A76D8  83 9F 00 20 */	lwz r28, 0x20(r31)
/* 802A76DC  28 1C 00 00 */	cmplwi r28, 0
/* 802A76E0  41 82 00 14 */	beq lbl_802A76F4
/* 802A76E4  80 1F 00 08 */	lwz r0, 8(r31)
/* 802A76E8  28 00 00 00 */	cmplwi r0, 0
/* 802A76EC  41 82 00 08 */	beq lbl_802A76F4
/* 802A76F0  38 60 00 01 */	li r3, 1
lbl_802A76F4:
/* 802A76F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A76F8  41 82 00 D8 */	beq lbl_802A77D0
/* 802A76FC  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 802A7700  83 DF 00 08 */	lwz r30, 8(r31)
/* 802A7704  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 802A7708  90 1E 00 08 */	stw r0, 8(r30)
/* 802A770C  93 9E 00 0C */	stw r28, 0xc(r30)
/* 802A7710  38 00 00 00 */	li r0, 0
/* 802A7714  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802A7718  3C 60 80 2B */	lis r3, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@ha /* 0x802A828C@ha */
/* 802A771C  38 03 82 8C */	addi r0, r3, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@l /* 0x802A828C@l */
/* 802A7720  90 1E 00 24 */	stw r0, 0x24(r30)
/* 802A7724  7F C3 F3 78 */	mr r3, r30
/* 802A7728  7F 84 E3 78 */	mr r4, r28
/* 802A772C  81 9E 00 00 */	lwz r12, 0(r30)
/* 802A7730  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802A7734  7D 89 03 A6 */	mtctr r12
/* 802A7738  4E 80 04 21 */	bctrl 
/* 802A773C  7F C3 F3 78 */	mr r3, r30
/* 802A7740  7F A4 EB 78 */	mr r4, r29
/* 802A7744  7F 85 E3 78 */	mr r5, r28
/* 802A7748  81 9E 00 00 */	lwz r12, 0(r30)
/* 802A774C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802A7750  7D 89 03 A6 */	mtctr r12
/* 802A7754  4E 80 04 21 */	bctrl 
/* 802A7758  7F C3 F3 78 */	mr r3, r30
/* 802A775C  7F A4 EB 78 */	mr r4, r29
/* 802A7760  7F 85 E3 78 */	mr r5, r28
/* 802A7764  81 9E 00 00 */	lwz r12, 0(r30)
/* 802A7768  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A776C  7D 89 03 A6 */	mtctr r12
/* 802A7770  4E 80 04 21 */	bctrl 
/* 802A7774  80 9F 00 08 */	lwz r4, 8(r31)
/* 802A7778  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 802A777C  90 04 00 10 */	stw r0, 0x10(r4)
/* 802A7780  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 802A7784  54 00 10 3A */	slwi r0, r0, 2
/* 802A7788  7C 7F 02 14 */	add r3, r31, r0
/* 802A778C  38 63 00 28 */	addi r3, r3, 0x28
/* 802A7790  38 A4 00 14 */	addi r5, r4, 0x14
/* 802A7794  38 9F 00 28 */	addi r4, r31, 0x28
/* 802A7798  38 03 00 03 */	addi r0, r3, 3
/* 802A779C  7C 04 00 50 */	subf r0, r4, r0
/* 802A77A0  54 00 F0 BE */	srwi r0, r0, 2
/* 802A77A4  7C 09 03 A6 */	mtctr r0
/* 802A77A8  7C 04 18 40 */	cmplw r4, r3
/* 802A77AC  40 80 00 18 */	bge lbl_802A77C4
lbl_802A77B0:
/* 802A77B0  80 04 00 00 */	lwz r0, 0(r4)
/* 802A77B4  90 05 00 00 */	stw r0, 0(r5)
/* 802A77B8  38 84 00 04 */	addi r4, r4, 4
/* 802A77BC  38 A5 00 04 */	addi r5, r5, 4
/* 802A77C0  42 00 FF F0 */	bdnz lbl_802A77B0
lbl_802A77C4:
/* 802A77C4  80 7F 00 08 */	lwz r3, 8(r31)
/* 802A77C8  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 802A77CC  48 00 13 55 */	bl process__Q28JMessage19TRenderingProcessorFPCc
lbl_802A77D0:
/* 802A77D0  39 61 00 20 */	addi r11, r1, 0x20
/* 802A77D4  48 0B AA 51 */	bl _restgpr_28
/* 802A77D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A77DC  7C 08 03 A6 */	mtlr r0
/* 802A77E0  38 21 00 20 */	addi r1, r1, 0x20
/* 802A77E4  4E 80 00 20 */	blr 
