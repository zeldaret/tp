lbl_801BA700:
/* 801BA700  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801BA704  7C 08 02 A6 */	mflr r0
/* 801BA708  90 01 00 24 */	stw r0, 0x24(r1)
/* 801BA70C  39 61 00 20 */	addi r11, r1, 0x20
/* 801BA710  48 1A 7A C9 */	bl _savegpr_28
/* 801BA714  7C 7C 1B 78 */	mr r28, r3
/* 801BA718  7C 9D 23 78 */	mr r29, r4
/* 801BA71C  80 63 0C A8 */	lwz r3, 0xca8(r3)
/* 801BA720  3C 80 30 30 */	lis r4, 0x3030 /* 0x30305F30@ha */
/* 801BA724  38 C4 5F 30 */	addi r6, r4, 0x5F30 /* 0x30305F30@l */
/* 801BA728  3C 80 67 6F */	lis r4, 0x676F /* 0x676F6C64@ha */
/* 801BA72C  38 A4 6C 64 */	addi r5, r4, 0x6C64 /* 0x676F6C64@l */
/* 801BA730  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA734  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BA738  7D 89 03 A6 */	mtctr r12
/* 801BA73C  4E 80 04 21 */	bctrl 
/* 801BA740  7C 7F 1B 78 */	mr r31, r3
/* 801BA744  80 7C 0C A8 */	lwz r3, 0xca8(r28)
/* 801BA748  3C 80 30 30 */	lis r4, 0x3030 /* 0x30305F31@ha */
/* 801BA74C  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x30305F31@l */
/* 801BA750  3C 80 67 6F */	lis r4, 0x676F /* 0x676F6C64@ha */
/* 801BA754  38 A4 6C 64 */	addi r5, r4, 0x6C64 /* 0x676F6C64@l */
/* 801BA758  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA75C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BA760  7D 89 03 A6 */	mtctr r12
/* 801BA764  4E 80 04 21 */	bctrl 
/* 801BA768  7C 7E 1B 78 */	mr r30, r3
/* 801BA76C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801BA770  41 82 00 38 */	beq lbl_801BA7A8
/* 801BA774  7F E3 FB 78 */	mr r3, r31
/* 801BA778  80 9C 0D 28 */	lwz r4, 0xd28(r28)
/* 801BA77C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801BA780  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801BA784  7D 89 03 A6 */	mtctr r12
/* 801BA788  4E 80 04 21 */	bctrl 
/* 801BA78C  7F C3 F3 78 */	mr r3, r30
/* 801BA790  80 9C 0D 28 */	lwz r4, 0xd28(r28)
/* 801BA794  81 9E 00 00 */	lwz r12, 0(r30)
/* 801BA798  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801BA79C  7D 89 03 A6 */	mtctr r12
/* 801BA7A0  4E 80 04 21 */	bctrl 
/* 801BA7A4  48 00 00 34 */	b lbl_801BA7D8
lbl_801BA7A8:
/* 801BA7A8  7F E3 FB 78 */	mr r3, r31
/* 801BA7AC  38 80 00 00 */	li r4, 0
/* 801BA7B0  81 9F 00 00 */	lwz r12, 0(r31)
/* 801BA7B4  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801BA7B8  7D 89 03 A6 */	mtctr r12
/* 801BA7BC  4E 80 04 21 */	bctrl 
/* 801BA7C0  7F C3 F3 78 */	mr r3, r30
/* 801BA7C4  38 80 00 00 */	li r4, 0
/* 801BA7C8  81 9E 00 00 */	lwz r12, 0(r30)
/* 801BA7CC  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801BA7D0  7D 89 03 A6 */	mtctr r12
/* 801BA7D4  4E 80 04 21 */	bctrl 
lbl_801BA7D8:
/* 801BA7D8  39 61 00 20 */	addi r11, r1, 0x20
/* 801BA7DC  48 1A 7A 49 */	bl _restgpr_28
/* 801BA7E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801BA7E4  7C 08 03 A6 */	mtlr r0
/* 801BA7E8  38 21 00 20 */	addi r1, r1, 0x20
/* 801BA7EC  4E 80 00 20 */	blr 
