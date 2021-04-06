lbl_8036D6F0:
/* 8036D6F0  2C 03 00 00 */	cmpwi r3, 0
/* 8036D6F4  38 00 00 00 */	li r0, 0
/* 8036D6F8  41 80 00 1C */	blt lbl_8036D714
/* 8036D6FC  2C 03 00 03 */	cmpwi r3, 3
/* 8036D700  40 80 00 14 */	bge lbl_8036D714
/* 8036D704  1C 83 08 90 */	mulli r4, r3, 0x890
/* 8036D708  3C 60 80 45 */	lis r3, gTRKMsgBufs@ha /* 0x8044D8C0@ha */
/* 8036D70C  38 03 D8 C0 */	addi r0, r3, gTRKMsgBufs@l /* 0x8044D8C0@l */
/* 8036D710  7C 00 22 14 */	add r0, r0, r4
lbl_8036D714:
/* 8036D714  7C 03 03 78 */	mr r3, r0
/* 8036D718  4E 80 00 20 */	blr 
