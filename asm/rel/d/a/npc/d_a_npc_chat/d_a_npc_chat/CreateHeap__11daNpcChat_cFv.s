lbl_809822A0:
/* 809822A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809822A4  7C 08 02 A6 */	mflr r0
/* 809822A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809822AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809822B0  93 C1 00 08 */	stw r30, 8(r1)
/* 809822B4  7C 7F 1B 78 */	mr r31, r3
/* 809822B8  88 83 0E 10 */	lbz r4, 0xe10(r3)
/* 809822BC  4B FF E9 61 */	bl NpcCreate__11daNpcChat_cFi
/* 809822C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 809822C4  41 82 00 B0 */	beq lbl_80982374
/* 809822C8  80 9F 0E 14 */	lwz r4, 0xe14(r31)
/* 809822CC  2C 04 00 00 */	cmpwi r4, 0
/* 809822D0  41 82 00 2C */	beq lbl_809822FC
/* 809822D4  7F E3 FB 78 */	mr r3, r31
/* 809822D8  4B FF EC B1 */	bl ObjCreate__11daNpcChat_cFi
/* 809822DC  90 7F 0B F0 */	stw r3, 0xbf0(r31)
/* 809822E0  30 03 FF FF */	addic r0, r3, -1
/* 809822E4  7C 00 19 10 */	subfe r0, r0, r3
/* 809822E8  54 1E 06 3F */	clrlwi. r30, r0, 0x18
/* 809822EC  40 82 00 88 */	bne lbl_80982374
/* 809822F0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809822F4  4B 68 F0 1D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 809822F8  48 00 00 7C */	b lbl_80982374
lbl_809822FC:
/* 809822FC  88 1F 0E 51 */	lbz r0, 0xe51(r31)
/* 80982300  28 00 00 01 */	cmplwi r0, 1
/* 80982304  40 82 00 64 */	bne lbl_80982368
/* 80982308  88 1F 0E 10 */	lbz r0, 0xe10(r31)
/* 8098230C  2C 00 00 10 */	cmpwi r0, 0x10
/* 80982310  40 80 00 1C */	bge lbl_8098232C
/* 80982314  3C 60 80 99 */	lis r3, a_prmTbl_M@ha /* 0x809898D4@ha */
/* 80982318  38 63 98 D4 */	addi r3, r3, a_prmTbl_M@l /* 0x809898D4@l */
/* 8098231C  54 00 30 32 */	slwi r0, r0, 6
/* 80982320  7C 63 02 14 */	add r3, r3, r0
/* 80982324  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80982328  48 00 00 18 */	b lbl_80982340
lbl_8098232C:
/* 8098232C  3C 60 80 99 */	lis r3, a_prmTbl_W@ha /* 0x8098B3CC@ha */
/* 80982330  38 63 B3 CC */	addi r3, r3, a_prmTbl_W@l /* 0x8098B3CC@l */
/* 80982334  54 00 30 32 */	slwi r0, r0, 6
/* 80982338  7C 63 02 14 */	add r3, r3, r0
/* 8098233C  C0 23 FC 18 */	lfs f1, -0x3e8(r3)
lbl_80982340:
/* 80982340  7F E3 FB 78 */	mr r3, r31
/* 80982344  4B FF EC 85 */	bl ChairCreate__11daNpcChat_cFf
/* 80982348  90 7F 0B F0 */	stw r3, 0xbf0(r31)
/* 8098234C  30 03 FF FF */	addic r0, r3, -1
/* 80982350  7C 00 19 10 */	subfe r0, r0, r3
/* 80982354  54 1E 06 3F */	clrlwi. r30, r0, 0x18
/* 80982358  40 82 00 1C */	bne lbl_80982374
/* 8098235C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80982360  4B 68 EF B1 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80982364  48 00 00 10 */	b lbl_80982374
lbl_80982368:
/* 80982368  38 00 00 00 */	li r0, 0
/* 8098236C  90 1F 0B F0 */	stw r0, 0xbf0(r31)
/* 80982370  3B C0 00 01 */	li r30, 1
lbl_80982374:
/* 80982374  7F E3 FB 78 */	mr r3, r31
/* 80982378  38 80 00 01 */	li r4, 1
/* 8098237C  3C A0 80 98 */	lis r5, lit_4922@ha /* 0x80986F54@ha */
/* 80982380  C0 25 6F 54 */	lfs f1, lit_4922@l(r5)  /* 0x80986F54@l */
/* 80982384  38 A0 00 00 */	li r5, 0
/* 80982388  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098238C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80982390  7D 89 03 A6 */	mtctr r12
/* 80982394  4E 80 04 21 */	bctrl 
/* 80982398  7F C3 F3 78 */	mr r3, r30
/* 8098239C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809823A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809823A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809823A8  7C 08 03 A6 */	mtlr r0
/* 809823AC  38 21 00 10 */	addi r1, r1, 0x10
/* 809823B0  4E 80 00 20 */	blr 
