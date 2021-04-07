lbl_802734FC:
/* 802734FC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80273500  7C 08 02 A6 */	mflr r0
/* 80273504  90 01 00 44 */	stw r0, 0x44(r1)
/* 80273508  39 61 00 40 */	addi r11, r1, 0x40
/* 8027350C  48 0E EC CD */	bl _savegpr_28
/* 80273510  38 61 00 24 */	addi r3, r1, 0x24
/* 80273514  38 81 00 28 */	addi r4, r1, 0x28
/* 80273518  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8027351C  38 C1 00 20 */	addi r6, r1, 0x20
/* 80273520  48 0E D9 B5 */	bl GXReadXfRasMetric
/* 80273524  38 61 00 14 */	addi r3, r1, 0x14
/* 80273528  38 81 00 18 */	addi r4, r1, 0x18
/* 8027352C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80273530  38 C1 00 10 */	addi r6, r1, 0x10
/* 80273534  48 0E D9 A1 */	bl GXReadXfRasMetric
/* 80273538  80 61 00 28 */	lwz r3, 0x28(r1)
/* 8027353C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80273540  7C 03 00 50 */	subf r0, r3, r0
/* 80273544  7C 00 00 34 */	cntlzw r0, r0
/* 80273548  54 1F DE 3E */	rlwinm r31, r0, 0x1b, 0x18, 0x1f
/* 8027354C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80273550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80273554  7C 03 00 50 */	subf r0, r3, r0
/* 80273558  7C 00 00 34 */	cntlzw r0, r0
/* 8027355C  54 1E DE 3E */	rlwinm r30, r0, 0x1b, 0x18, 0x1f
/* 80273560  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80273564  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80273568  7C 63 00 50 */	subf r3, r3, r0
/* 8027356C  30 03 FF FF */	addic r0, r3, -1
/* 80273570  7C 00 19 10 */	subfe r0, r0, r3
/* 80273574  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 80273578  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8027357C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80273580  7C 63 00 50 */	subf r3, r3, r0
/* 80273584  30 03 FF FF */	addic r0, r3, -1
/* 80273588  7C 00 19 10 */	subfe r0, r0, r3
/* 8027358C  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 80273590  38 61 00 08 */	addi r3, r1, 8
/* 80273594  7C 64 1B 78 */	mr r4, r3
/* 80273598  38 A1 00 0A */	addi r5, r1, 0xa
/* 8027359C  38 C1 00 09 */	addi r6, r1, 9
/* 802735A0  7C 67 1B 78 */	mr r7, r3
/* 802735A4  48 0E 75 E5 */	bl GXGetGPStatus
/* 802735A8  3C 60 80 3A */	lis r3, JFWDisplay__stringBase0@ha /* 0x8039A878@ha */
/* 802735AC  38 63 A8 78 */	addi r3, r3, JFWDisplay__stringBase0@l /* 0x8039A878@l */
/* 802735B0  88 81 00 0A */	lbz r4, 0xa(r1)
/* 802735B4  88 A1 00 09 */	lbz r5, 9(r1)
/* 802735B8  7F E6 FB 78 */	mr r6, r31
/* 802735BC  7F C7 F3 78 */	mr r7, r30
/* 802735C0  7F A8 EB 78 */	mr r8, r29
/* 802735C4  7F 89 E3 78 */	mr r9, r28
/* 802735C8  4C C6 31 82 */	crclr 6
/* 802735CC  4B D9 34 F1 */	bl OSReport
/* 802735D0  28 1E 00 00 */	cmplwi r30, 0
/* 802735D4  40 82 00 24 */	bne lbl_802735F8
/* 802735D8  28 1D 00 00 */	cmplwi r29, 0
/* 802735DC  41 82 00 1C */	beq lbl_802735F8
/* 802735E0  3C 60 80 3A */	lis r3, JFWDisplay__stringBase0@ha /* 0x8039A878@ha */
/* 802735E4  38 63 A8 78 */	addi r3, r3, JFWDisplay__stringBase0@l /* 0x8039A878@l */
/* 802735E8  38 63 00 1C */	addi r3, r3, 0x1c
/* 802735EC  4C C6 31 82 */	crclr 6
/* 802735F0  4B D9 34 CD */	bl OSReport
/* 802735F4  48 00 00 D0 */	b lbl_802736C4
lbl_802735F8:
/* 802735F8  28 1F 00 00 */	cmplwi r31, 0
/* 802735FC  40 82 00 2C */	bne lbl_80273628
/* 80273600  28 1E 00 00 */	cmplwi r30, 0
/* 80273604  41 82 00 24 */	beq lbl_80273628
/* 80273608  28 1D 00 00 */	cmplwi r29, 0
/* 8027360C  41 82 00 1C */	beq lbl_80273628
/* 80273610  3C 60 80 3A */	lis r3, JFWDisplay__stringBase0@ha /* 0x8039A878@ha */
/* 80273614  38 63 A8 78 */	addi r3, r3, JFWDisplay__stringBase0@l /* 0x8039A878@l */
/* 80273618  38 63 00 3A */	addi r3, r3, 0x3a
/* 8027361C  4C C6 31 82 */	crclr 6
/* 80273620  4B D9 34 9D */	bl OSReport
/* 80273624  48 00 00 A0 */	b lbl_802736C4
lbl_80273628:
/* 80273628  88 61 00 09 */	lbz r3, 9(r1)
/* 8027362C  28 03 00 00 */	cmplwi r3, 0
/* 80273630  40 82 00 34 */	bne lbl_80273664
/* 80273634  28 1F 00 00 */	cmplwi r31, 0
/* 80273638  41 82 00 2C */	beq lbl_80273664
/* 8027363C  28 1E 00 00 */	cmplwi r30, 0
/* 80273640  41 82 00 24 */	beq lbl_80273664
/* 80273644  28 1D 00 00 */	cmplwi r29, 0
/* 80273648  41 82 00 1C */	beq lbl_80273664
/* 8027364C  3C 60 80 3A */	lis r3, JFWDisplay__stringBase0@ha /* 0x8039A878@ha */
/* 80273650  38 63 A8 78 */	addi r3, r3, JFWDisplay__stringBase0@l /* 0x8039A878@l */
/* 80273654  38 63 00 62 */	addi r3, r3, 0x62
/* 80273658  4C C6 31 82 */	crclr 6
/* 8027365C  4B D9 34 61 */	bl OSReport
/* 80273660  48 00 00 64 */	b lbl_802736C4
lbl_80273664:
/* 80273664  88 01 00 0A */	lbz r0, 0xa(r1)
/* 80273668  28 00 00 00 */	cmplwi r0, 0
/* 8027366C  41 82 00 44 */	beq lbl_802736B0
/* 80273670  28 03 00 00 */	cmplwi r3, 0
/* 80273674  41 82 00 3C */	beq lbl_802736B0
/* 80273678  28 1F 00 00 */	cmplwi r31, 0
/* 8027367C  41 82 00 34 */	beq lbl_802736B0
/* 80273680  28 1E 00 00 */	cmplwi r30, 0
/* 80273684  41 82 00 2C */	beq lbl_802736B0
/* 80273688  28 1D 00 00 */	cmplwi r29, 0
/* 8027368C  41 82 00 24 */	beq lbl_802736B0
/* 80273690  28 1C 00 00 */	cmplwi r28, 0
/* 80273694  41 82 00 1C */	beq lbl_802736B0
/* 80273698  3C 60 80 3A */	lis r3, JFWDisplay__stringBase0@ha /* 0x8039A878@ha */
/* 8027369C  38 63 A8 78 */	addi r3, r3, JFWDisplay__stringBase0@l /* 0x8039A878@l */
/* 802736A0  38 63 00 87 */	addi r3, r3, 0x87
/* 802736A4  4C C6 31 82 */	crclr 6
/* 802736A8  4B D9 34 15 */	bl OSReport
/* 802736AC  48 00 00 18 */	b lbl_802736C4
lbl_802736B0:
/* 802736B0  3C 60 80 3A */	lis r3, JFWDisplay__stringBase0@ha /* 0x8039A878@ha */
/* 802736B4  38 63 A8 78 */	addi r3, r3, JFWDisplay__stringBase0@l /* 0x8039A878@l */
/* 802736B8  38 63 00 B7 */	addi r3, r3, 0xb7
/* 802736BC  4C C6 31 82 */	crclr 6
/* 802736C0  4B D9 33 FD */	bl OSReport
lbl_802736C4:
/* 802736C4  39 61 00 40 */	addi r11, r1, 0x40
/* 802736C8  48 0E EB 5D */	bl _restgpr_28
/* 802736CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802736D0  7C 08 03 A6 */	mtlr r0
/* 802736D4  38 21 00 40 */	addi r1, r1, 0x40
/* 802736D8  4E 80 00 20 */	blr 
