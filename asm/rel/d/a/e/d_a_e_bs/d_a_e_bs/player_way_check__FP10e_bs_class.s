lbl_8068E4F0:
/* 8068E4F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068E4F4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068E4F8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8068E4FC  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 8068E500  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 8068E504  7C 04 00 50 */	subf r0, r4, r0
/* 8068E508  7C 00 07 35 */	extsh. r0, r0
/* 8068E50C  40 80 00 0C */	bge lbl_8068E518
/* 8068E510  7C 00 00 D0 */	neg r0, r0
/* 8068E514  7C 00 07 34 */	extsh r0, r0
lbl_8068E518:
/* 8068E518  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8068E51C  28 00 60 00 */	cmplwi r0, 0x6000
/* 8068E520  40 80 00 0C */	bge lbl_8068E52C
/* 8068E524  38 60 00 00 */	li r3, 0
/* 8068E528  4E 80 00 20 */	blr 
lbl_8068E52C:
/* 8068E52C  38 60 00 01 */	li r3, 1
/* 8068E530  4E 80 00 20 */	blr 
