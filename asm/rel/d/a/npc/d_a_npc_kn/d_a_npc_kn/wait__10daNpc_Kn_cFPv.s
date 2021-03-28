lbl_80A2D7DC:
/* 80A2D7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2D7E0  7C 08 02 A6 */	mflr r0
/* 80A2D7E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2D7E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2D7EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A2D7F0  7C 7F 1B 78 */	mr r31, r3
/* 80A2D7F4  A0 03 0E 2A */	lhz r0, 0xe2a(r3)
/* 80A2D7F8  2C 00 00 02 */	cmpwi r0, 2
/* 80A2D7FC  41 82 00 80 */	beq lbl_80A2D87C
/* 80A2D800  40 80 01 A8 */	bge lbl_80A2D9A8
/* 80A2D804  2C 00 00 00 */	cmpwi r0, 0
/* 80A2D808  40 80 00 0C */	bge lbl_80A2D814
/* 80A2D80C  48 00 01 9C */	b lbl_80A2D9A8
/* 80A2D810  48 00 01 98 */	b lbl_80A2D9A8
lbl_80A2D814:
/* 80A2D814  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A2D818  2C 00 00 01 */	cmpwi r0, 1
/* 80A2D81C  41 82 00 28 */	beq lbl_80A2D844
/* 80A2D820  83 DF 0B 90 */	lwz r30, 0xb90(r31)
/* 80A2D824  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A2D828  4B 71 80 70 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2D82C  93 DF 0B 90 */	stw r30, 0xb90(r31)
/* 80A2D830  38 00 00 01 */	li r0, 1
/* 80A2D834  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A2D838  3C 60 80 A4 */	lis r3, lit_4613@ha
/* 80A2D83C  C0 03 09 14 */	lfs f0, lit_4613@l(r3)
/* 80A2D840  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A2D844:
/* 80A2D844  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A2D848  2C 00 00 00 */	cmpwi r0, 0
/* 80A2D84C  41 82 00 28 */	beq lbl_80A2D874
/* 80A2D850  83 DF 0B B4 */	lwz r30, 0xbb4(r31)
/* 80A2D854  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A2D858  4B 71 80 40 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2D85C  93 DF 0B B4 */	stw r30, 0xbb4(r31)
/* 80A2D860  38 00 00 00 */	li r0, 0
/* 80A2D864  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A2D868  3C 60 80 A4 */	lis r3, lit_4613@ha
/* 80A2D86C  C0 03 09 14 */	lfs f0, lit_4613@l(r3)
/* 80A2D870  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
lbl_80A2D874:
/* 80A2D874  38 00 00 02 */	li r0, 2
/* 80A2D878  B0 1F 0E 2A */	sth r0, 0xe2a(r31)
lbl_80A2D87C:
/* 80A2D87C  88 1F 0A BD */	lbz r0, 0xabd(r31)
/* 80A2D880  28 00 00 00 */	cmplwi r0, 0
/* 80A2D884  40 82 00 54 */	bne lbl_80A2D8D8
/* 80A2D888  7F E3 FB 78 */	mr r3, r31
/* 80A2D88C  48 00 D6 D9 */	bl srchPlayerActor__10daNpc_Kn_cFv
/* 80A2D890  2C 03 00 00 */	cmpwi r3, 0
/* 80A2D894  41 82 00 44 */	beq lbl_80A2D8D8
/* 80A2D898  80 1F 0D 14 */	lwz r0, 0xd14(r31)
/* 80A2D89C  2C 00 00 01 */	cmpwi r0, 1
/* 80A2D8A0  41 82 00 2C */	beq lbl_80A2D8CC
/* 80A2D8A4  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80A2D8A8  4B 71 7E 54 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A2D8AC  38 00 00 00 */	li r0, 0
/* 80A2D8B0  90 1F 0B FC */	stw r0, 0xbfc(r31)
/* 80A2D8B4  3C 60 80 A4 */	lis r3, lit_4204@ha
/* 80A2D8B8  C0 03 09 00 */	lfs f0, lit_4204@l(r3)
/* 80A2D8BC  D0 1F 0D 28 */	stfs f0, 0xd28(r31)
/* 80A2D8C0  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A2D8C4  38 00 00 01 */	li r0, 1
/* 80A2D8C8  90 1F 0D 14 */	stw r0, 0xd14(r31)
lbl_80A2D8CC:
/* 80A2D8CC  38 00 00 00 */	li r0, 0
/* 80A2D8D0  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A2D8D4  48 00 00 D4 */	b lbl_80A2D9A8
lbl_80A2D8D8:
/* 80A2D8D8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A2D8DC  A8 1F 0D AE */	lha r0, 0xdae(r31)
/* 80A2D8E0  7C 04 00 00 */	cmpw r4, r0
/* 80A2D8E4  41 82 00 8C */	beq lbl_80A2D970
/* 80A2D8E8  7F E3 FB 78 */	mr r3, r31
/* 80A2D8EC  38 A0 00 01 */	li r5, 1
/* 80A2D8F0  38 C0 00 20 */	li r6, 0x20
/* 80A2D8F4  38 E0 00 14 */	li r7, 0x14
/* 80A2D8F8  39 00 00 00 */	li r8, 0
/* 80A2D8FC  48 00 D9 25 */	bl step__10daNpc_Kn_cFsiiii
/* 80A2D900  2C 03 00 00 */	cmpwi r3, 0
/* 80A2D904  41 82 00 6C */	beq lbl_80A2D970
/* 80A2D908  38 00 00 01 */	li r0, 1
/* 80A2D90C  B0 1F 0E 2A */	sth r0, 0xe2a(r31)
/* 80A2D910  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A2D914  2C 00 00 01 */	cmpwi r0, 1
/* 80A2D918  41 82 00 28 */	beq lbl_80A2D940
/* 80A2D91C  83 DF 0B 90 */	lwz r30, 0xb90(r31)
/* 80A2D920  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A2D924  4B 71 7F 74 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2D928  93 DF 0B 90 */	stw r30, 0xb90(r31)
/* 80A2D92C  38 00 00 01 */	li r0, 1
/* 80A2D930  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A2D934  3C 60 80 A4 */	lis r3, lit_4613@ha
/* 80A2D938  C0 03 09 14 */	lfs f0, lit_4613@l(r3)
/* 80A2D93C  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A2D940:
/* 80A2D940  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A2D944  2C 00 00 00 */	cmpwi r0, 0
/* 80A2D948  41 82 00 28 */	beq lbl_80A2D970
/* 80A2D94C  83 DF 0B B4 */	lwz r30, 0xbb4(r31)
/* 80A2D950  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A2D954  4B 71 7F 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2D958  93 DF 0B B4 */	stw r30, 0xbb4(r31)
/* 80A2D95C  38 00 00 00 */	li r0, 0
/* 80A2D960  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A2D964  3C 60 80 A4 */	lis r3, lit_4613@ha
/* 80A2D968  C0 03 09 14 */	lfs f0, lit_4613@l(r3)
/* 80A2D96C  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
lbl_80A2D970:
/* 80A2D970  80 1F 0D 14 */	lwz r0, 0xd14(r31)
/* 80A2D974  2C 00 00 00 */	cmpwi r0, 0
/* 80A2D978  41 82 00 28 */	beq lbl_80A2D9A0
/* 80A2D97C  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80A2D980  4B 71 7D 7C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A2D984  38 00 00 00 */	li r0, 0
/* 80A2D988  90 1F 0B FC */	stw r0, 0xbfc(r31)
/* 80A2D98C  3C 60 80 A4 */	lis r3, lit_4204@ha
/* 80A2D990  C0 03 09 00 */	lfs f0, lit_4204@l(r3)
/* 80A2D994  D0 1F 0D 28 */	stfs f0, 0xd28(r31)
/* 80A2D998  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A2D99C  90 1F 0D 14 */	stw r0, 0xd14(r31)
lbl_80A2D9A0:
/* 80A2D9A0  38 00 00 00 */	li r0, 0
/* 80A2D9A4  98 1F 0D 33 */	stb r0, 0xd33(r31)
lbl_80A2D9A8:
/* 80A2D9A8  38 60 00 01 */	li r3, 1
/* 80A2D9AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2D9B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A2D9B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2D9B8  7C 08 03 A6 */	mtlr r0
/* 80A2D9BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2D9C0  4E 80 00 20 */	blr 
