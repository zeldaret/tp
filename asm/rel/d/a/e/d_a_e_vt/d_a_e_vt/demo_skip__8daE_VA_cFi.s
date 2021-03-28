lbl_807C5338:
/* 807C5338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C533C  7C 08 02 A6 */	mflr r0
/* 807C5340  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C5344  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C5348  7C 7F 1B 78 */	mr r31, r3
/* 807C534C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807C5350  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807C5354  80 63 00 00 */	lwz r3, 0(r3)
/* 807C5358  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807C535C  38 80 00 1E */	li r4, 0x1e
/* 807C5360  4B AE AB 7C */	b bgmStreamStop__8Z2SeqMgrFUl
/* 807C5364  38 00 00 01 */	li r0, 1
/* 807C5368  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 807C536C  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)
/* 807C5370  38 60 00 01 */	li r3, 1
/* 807C5374  3C 80 80 7D */	lis r4, lit_3908@ha
/* 807C5378  C0 24 EC AC */	lfs f1, lit_3908@l(r4)
/* 807C537C  38 80 00 00 */	li r4, 0
/* 807C5380  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807C5384  7C 05 07 74 */	extsb r5, r0
/* 807C5388  38 C0 00 00 */	li r6, 0
/* 807C538C  38 E0 FF FF */	li r7, -1
/* 807C5390  4B 86 1D E0 */	b dStage_changeScene__FifUlScsi
/* 807C5394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C5398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C539C  7C 08 03 A6 */	mtlr r0
/* 807C53A0  38 21 00 10 */	addi r1, r1, 0x10
/* 807C53A4  4E 80 00 20 */	blr 
