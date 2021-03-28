lbl_80D2B6F4:
/* 80D2B6F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2B6F8  7C 08 02 A6 */	mflr r0
/* 80D2B6FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2B700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2B704  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2B708  7C 7F 1B 78 */	mr r31, r3
/* 80D2B70C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D2B710  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D2B714  40 82 00 34 */	bne lbl_80D2B748
/* 80D2B718  7F E0 FB 79 */	or. r0, r31, r31
/* 80D2B71C  41 82 00 20 */	beq lbl_80D2B73C
/* 80D2B720  7C 1E 03 78 */	mr r30, r0
/* 80D2B724  4B 34 CF 00 */	b __ct__16dBgS_MoveBgActorFv
/* 80D2B728  3C 60 80 D3 */	lis r3, __vt__15daObjWarpOBrg_c@ha
/* 80D2B72C  38 03 BA 5C */	addi r0, r3, __vt__15daObjWarpOBrg_c@l
/* 80D2B730  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D2B734  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80D2B738  4B 51 E7 C8 */	b __ct__10dMsgFlow_cFv
lbl_80D2B73C:
/* 80D2B73C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D2B740  60 00 00 08 */	ori r0, r0, 8
/* 80D2B744  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D2B748:
/* 80D2B748  7F E3 FB 78 */	mr r3, r31
/* 80D2B74C  4B FF E7 31 */	bl create1st__15daObjWarpOBrg_cFv
/* 80D2B750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2B754  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2B758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2B75C  7C 08 03 A6 */	mtlr r0
/* 80D2B760  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2B764  4E 80 00 20 */	blr 
