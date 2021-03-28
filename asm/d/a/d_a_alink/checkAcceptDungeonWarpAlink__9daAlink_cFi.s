lbl_800D0208:
/* 800D0208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D020C  7C 08 02 A6 */	mflr r0
/* 800D0210  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D0214  48 04 F4 45 */	bl checkAcceptWarp__9daAlink_cFv
/* 800D0218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D021C  7C 08 03 A6 */	mtlr r0
/* 800D0220  38 21 00 10 */	addi r1, r1, 0x10
/* 800D0224  4E 80 00 20 */	blr 
