lbl_80947CD0:
/* 80947CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80947CD4  7C 08 02 A6 */	mflr r0
/* 80947CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80947CDC  38 80 00 07 */	li r4, 7
/* 80947CE0  3C A0 80 95 */	lis r5, lit_3926@ha /* 0x8094B1F0@ha */
/* 80947CE4  C0 25 B1 F0 */	lfs f1, lit_3926@l(r5)  /* 0x8094B1F0@l */
/* 80947CE8  48 00 23 6D */	bl setAnimeType__8daMyna_cFUcf
/* 80947CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80947CF0  7C 08 03 A6 */	mtlr r0
/* 80947CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80947CF8  4E 80 00 20 */	blr 
