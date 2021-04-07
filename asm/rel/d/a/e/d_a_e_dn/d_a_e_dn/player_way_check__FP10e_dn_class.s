lbl_804E6220:
/* 804E6220  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E6224  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E6228  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 804E622C  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 804E6230  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 804E6234  7C 04 00 50 */	subf r0, r4, r0
/* 804E6238  7C 00 07 35 */	extsh. r0, r0
/* 804E623C  40 80 00 0C */	bge lbl_804E6248
/* 804E6240  7C 00 00 D0 */	neg r0, r0
/* 804E6244  7C 00 07 34 */	extsh r0, r0
lbl_804E6248:
/* 804E6248  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804E624C  28 00 60 00 */	cmplwi r0, 0x6000
/* 804E6250  40 80 00 0C */	bge lbl_804E625C
/* 804E6254  38 60 00 00 */	li r3, 0
/* 804E6258  4E 80 00 20 */	blr 
lbl_804E625C:
/* 804E625C  38 60 00 01 */	li r3, 1
/* 804E6260  4E 80 00 20 */	blr 
