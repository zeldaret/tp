lbl_80BF6038:
/* 80BF6038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF603C  7C 08 02 A6 */	mflr r0
/* 80BF6040  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF6044  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF6048  7C 7F 1B 78 */	mr r31, r3
/* 80BF604C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BF6050  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BF6054  40 82 00 28 */	bne lbl_80BF607C
/* 80BF6058  28 1F 00 00 */	cmplwi r31, 0
/* 80BF605C  41 82 00 14 */	beq lbl_80BF6070
/* 80BF6060  4B 48 25 C5 */	bl __ct__16dBgS_MoveBgActorFv
/* 80BF6064  3C 60 80 BF */	lis r3, __vt__13daObjGWall2_c@ha /* 0x80BF6270@ha */
/* 80BF6068  38 03 62 70 */	addi r0, r3, __vt__13daObjGWall2_c@l /* 0x80BF6270@l */
/* 80BF606C  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80BF6070:
/* 80BF6070  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BF6074  60 00 00 08 */	ori r0, r0, 8
/* 80BF6078  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BF607C:
/* 80BF607C  7F E3 FB 78 */	mr r3, r31
/* 80BF6080  4B FF FA 35 */	bl create1st__13daObjGWall2_cFv
/* 80BF6084  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF6088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF608C  7C 08 03 A6 */	mtlr r0
/* 80BF6090  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF6094  4E 80 00 20 */	blr 
