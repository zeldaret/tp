lbl_802F8648:
/* 802F8648  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F864C  7C 08 02 A6 */	mflr r0
/* 802F8650  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F8654  39 61 00 30 */	addi r11, r1, 0x30
/* 802F8658  48 06 9B 81 */	bl _savegpr_28
/* 802F865C  7C 7D 1B 78 */	mr r29, r3
/* 802F8660  7C BE 2B 78 */	mr r30, r5
/* 802F8664  7C DF 33 79 */	or. r31, r6, r6
/* 802F8668  40 82 00 0C */	bne lbl_802F8674
/* 802F866C  38 60 00 00 */	li r3, 0
/* 802F8670  48 00 00 C0 */	b lbl_802F8730
lbl_802F8674:
/* 802F8674  7C 83 23 78 */	mr r3, r4
/* 802F8678  7F E4 FB 78 */	mr r4, r31
/* 802F867C  4B FD BB F5 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 802F8680  7C 7C 1B 79 */	or. r28, r3, r3
/* 802F8684  41 82 00 A8 */	beq lbl_802F872C
/* 802F8688  7F E3 FB 78 */	mr r3, r31
/* 802F868C  7F 84 E3 78 */	mr r4, r28
/* 802F8690  81 9F 00 00 */	lwz r12, 0(r31)
/* 802F8694  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802F8698  7D 89 03 A6 */	mtctr r12
/* 802F869C  4E 80 04 21 */	bctrl 
/* 802F86A0  7C 65 1B 78 */	mr r5, r3
/* 802F86A4  38 61 00 08 */	addi r3, r1, 8
/* 802F86A8  3C 80 80 3C */	lis r4, __vt__10JSUIosBase@ha /* 0x803C2DF8@ha */
/* 802F86AC  38 04 2D F8 */	addi r0, r4, __vt__10JSUIosBase@l /* 0x803C2DF8@l */
/* 802F86B0  90 01 00 08 */	stw r0, 8(r1)
/* 802F86B4  38 00 00 00 */	li r0, 0
/* 802F86B8  98 01 00 0C */	stb r0, 0xc(r1)
/* 802F86BC  3C 80 80 3D */	lis r4, __vt__14JSUInputStream@ha /* 0x803CC4D4@ha */
/* 802F86C0  38 04 C4 D4 */	addi r0, r4, __vt__14JSUInputStream@l /* 0x803CC4D4@l */
/* 802F86C4  90 01 00 08 */	stw r0, 8(r1)
/* 802F86C8  3C 80 80 3D */	lis r4, __vt__20JSURandomInputStream@ha /* 0x803CC4B0@ha */
/* 802F86CC  38 04 C4 B0 */	addi r0, r4, __vt__20JSURandomInputStream@l /* 0x803CC4B0@l */
/* 802F86D0  90 01 00 08 */	stw r0, 8(r1)
/* 802F86D4  3C 80 80 3D */	lis r4, __vt__20JSUMemoryInputStream@ha /* 0x803CC4F0@ha */
/* 802F86D8  38 04 C4 F0 */	addi r0, r4, __vt__20JSUMemoryInputStream@l /* 0x803CC4F0@l */
/* 802F86DC  90 01 00 08 */	stw r0, 8(r1)
/* 802F86E0  7F 84 E3 78 */	mr r4, r28
/* 802F86E4  4B FE 3E 3D */	bl setBuffer__20JSUMemoryInputStreamFPCvl
/* 802F86E8  7F A3 EB 78 */	mr r3, r29
/* 802F86EC  38 81 00 08 */	addi r4, r1, 8
/* 802F86F0  7F C5 F3 78 */	mr r5, r30
/* 802F86F4  7F E6 FB 78 */	mr r6, r31
/* 802F86F8  48 00 00 51 */	bl setPriority__9J2DScreenFP20JSURandomInputStreamUlP10JKRArchive
/* 802F86FC  7C 7D 1B 78 */	mr r29, r3
/* 802F8700  3C 60 80 3D */	lis r3, __vt__20JSUMemoryInputStream@ha /* 0x803CC4F0@ha */
/* 802F8704  38 03 C4 F0 */	addi r0, r3, __vt__20JSUMemoryInputStream@l /* 0x803CC4F0@l */
/* 802F8708  90 01 00 08 */	stw r0, 8(r1)
/* 802F870C  3C 60 80 3D */	lis r3, __vt__20JSURandomInputStream@ha /* 0x803CC4B0@ha */
/* 802F8710  38 03 C4 B0 */	addi r0, r3, __vt__20JSURandomInputStream@l /* 0x803CC4B0@l */
/* 802F8714  90 01 00 08 */	stw r0, 8(r1)
/* 802F8718  38 61 00 08 */	addi r3, r1, 8
/* 802F871C  38 80 00 00 */	li r4, 0
/* 802F8720  4B FE 3B 1D */	bl __dt__14JSUInputStreamFv
/* 802F8724  7F A3 EB 78 */	mr r3, r29
/* 802F8728  48 00 00 08 */	b lbl_802F8730
lbl_802F872C:
/* 802F872C  38 60 00 00 */	li r3, 0
lbl_802F8730:
/* 802F8730  39 61 00 30 */	addi r11, r1, 0x30
/* 802F8734  48 06 9A F1 */	bl _restgpr_28
/* 802F8738  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F873C  7C 08 03 A6 */	mtlr r0
/* 802F8740  38 21 00 30 */	addi r1, r1, 0x30
/* 802F8744  4E 80 00 20 */	blr 
