lbl_806541B4:
/* 806541B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806541B8  7C 08 02 A6 */	mflr r0
/* 806541BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806541C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806541C4  7C 7F 1B 78 */	mr r31, r3
/* 806541C8  98 83 07 45 */	stb r4, 0x745(r3)
/* 806541CC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 806541D0  2C 00 00 01 */	cmpwi r0, 1
/* 806541D4  41 82 00 3C */	beq lbl_80654210
/* 806541D8  40 80 00 10 */	bge lbl_806541E8
/* 806541DC  2C 00 00 00 */	cmpwi r0, 0
/* 806541E0  40 80 00 14 */	bge lbl_806541F4
/* 806541E4  48 00 00 60 */	b lbl_80654244
lbl_806541E8:
/* 806541E8  2C 00 00 03 */	cmpwi r0, 3
/* 806541EC  40 80 00 58 */	bge lbl_80654244
/* 806541F0  48 00 00 3C */	b lbl_8065422C
lbl_806541F4:
/* 806541F4  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 806541F8  4B C0 13 D0 */	b show__13CPaneMgrAlphaFv
/* 806541FC  80 7F 05 9C */	lwz r3, 0x59c(r31)
/* 80654200  4B C0 14 08 */	b hide__13CPaneMgrAlphaFv
/* 80654204  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80654208  4B C0 14 00 */	b hide__13CPaneMgrAlphaFv
/* 8065420C  48 00 00 38 */	b lbl_80654244
lbl_80654210:
/* 80654210  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 80654214  4B C0 13 F4 */	b hide__13CPaneMgrAlphaFv
/* 80654218  80 7F 05 9C */	lwz r3, 0x59c(r31)
/* 8065421C  4B C0 13 AC */	b show__13CPaneMgrAlphaFv
/* 80654220  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80654224  4B C0 13 E4 */	b hide__13CPaneMgrAlphaFv
/* 80654228  48 00 00 1C */	b lbl_80654244
lbl_8065422C:
/* 8065422C  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 80654230  4B C0 13 D8 */	b hide__13CPaneMgrAlphaFv
/* 80654234  80 7F 05 9C */	lwz r3, 0x59c(r31)
/* 80654238  4B C0 13 D0 */	b hide__13CPaneMgrAlphaFv
/* 8065423C  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80654240  4B C0 13 88 */	b show__13CPaneMgrAlphaFv
lbl_80654244:
/* 80654244  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80654248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8065424C  7C 08 03 A6 */	mtlr r0
/* 80654250  38 21 00 10 */	addi r1, r1, 0x10
/* 80654254  4E 80 00 20 */	blr 
