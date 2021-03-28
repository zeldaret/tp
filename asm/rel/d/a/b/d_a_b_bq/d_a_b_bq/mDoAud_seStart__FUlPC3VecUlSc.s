lbl_805BA34C:
/* 805BA34C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BA350  7C 08 02 A6 */	mflr r0
/* 805BA354  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BA358  7C 88 23 78 */	mr r8, r4
/* 805BA35C  7C A0 2B 78 */	mr r0, r5
/* 805BA360  7C C7 33 78 */	mr r7, r6
/* 805BA364  90 61 00 08 */	stw r3, 8(r1)
/* 805BA368  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805BA36C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805BA370  80 63 00 00 */	lwz r3, 0(r3)
/* 805BA374  38 81 00 08 */	addi r4, r1, 8
/* 805BA378  7D 05 43 78 */	mr r5, r8
/* 805BA37C  7C 06 03 78 */	mr r6, r0
/* 805BA380  3D 00 80 5C */	lis r8, lit_3816@ha
/* 805BA384  C0 28 A5 88 */	lfs f1, lit_3816@l(r8)
/* 805BA388  FC 40 08 90 */	fmr f2, f1
/* 805BA38C  3D 00 80 5C */	lis r8, lit_3831@ha
/* 805BA390  C0 68 A5 90 */	lfs f3, lit_3831@l(r8)
/* 805BA394  FC 80 18 90 */	fmr f4, f3
/* 805BA398  39 00 00 00 */	li r8, 0
/* 805BA39C  4B CF 15 E8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805BA3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BA3A4  7C 08 03 A6 */	mtlr r0
/* 805BA3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805BA3AC  4E 80 00 20 */	blr 
