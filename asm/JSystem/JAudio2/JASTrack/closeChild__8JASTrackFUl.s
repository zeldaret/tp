lbl_80291BB8:
/* 80291BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80291BBC  7C 08 02 A6 */	mflr r0
/* 80291BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80291BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80291BC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80291BCC  54 80 10 3A */	slwi r0, r4, 2
/* 80291BD0  7F E3 02 14 */	add r31, r3, r0
/* 80291BD4  83 DF 01 30 */	lwz r30, 0x130(r31)
/* 80291BD8  28 1E 00 00 */	cmplwi r30, 0
/* 80291BDC  41 82 00 3C */	beq lbl_80291C18
/* 80291BE0  48 00 11 A9 */	bl getRootTrack__8JASTrackFv
/* 80291BE4  38 80 00 00 */	li r4, 0
/* 80291BE8  C0 22 BB A4 */	lfs f1, lit_679(r2)
/* 80291BEC  48 00 09 95 */	bl updateSeq__8JASTrackFbf
/* 80291BF0  7F C3 F3 78 */	mr r3, r30
/* 80291BF4  4B FF FE D5 */	bl close__8JASTrackFv
/* 80291BF8  88 1E 02 16 */	lbz r0, 0x216(r30)
/* 80291BFC  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80291C00  41 82 00 18 */	beq lbl_80291C18
/* 80291C04  7F C3 F3 78 */	mr r3, r30
/* 80291C08  38 80 00 01 */	li r4, 1
/* 80291C0C  4B FF F7 11 */	bl __dt__8JASTrackFv
/* 80291C10  38 00 00 00 */	li r0, 0
/* 80291C14  90 1F 01 30 */	stw r0, 0x130(r31)
lbl_80291C18:
/* 80291C18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80291C1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80291C20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80291C24  7C 08 03 A6 */	mtlr r0
/* 80291C28  38 21 00 10 */	addi r1, r1, 0x10
/* 80291C2C  4E 80 00 20 */	blr 
