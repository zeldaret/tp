lbl_8048D958:
/* 8048D958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D95C  7C 08 02 A6 */	mflr r0
/* 8048D960  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D964  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048D968  7C 7F 1B 78 */	mr r31, r3
/* 8048D96C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8048D970  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8048D974  40 82 00 28 */	bne lbl_8048D99C
/* 8048D978  28 1F 00 00 */	cmplwi r31, 0
/* 8048D97C  41 82 00 14 */	beq lbl_8048D990
/* 8048D980  4B B8 B1 E5 */	bl __ct__10fopAc_ac_cFv
/* 8048D984  3C 60 80 49 */	lis r3, __vt__12daTag_Howl_c@ha /* 0x8048DDD8@ha */
/* 8048D988  38 03 DD D8 */	addi r0, r3, __vt__12daTag_Howl_c@l /* 0x8048DDD8@l */
/* 8048D98C  90 1F 05 6C */	stw r0, 0x56c(r31)
lbl_8048D990:
/* 8048D990  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8048D994  60 00 00 08 */	ori r0, r0, 8
/* 8048D998  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8048D99C:
/* 8048D99C  7F E3 FB 78 */	mr r3, r31
/* 8048D9A0  48 00 02 7D */	bl getParam__12daTag_Howl_cFv
/* 8048D9A4  38 60 00 04 */	li r3, 4
/* 8048D9A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048D9AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D9B0  7C 08 03 A6 */	mtlr r0
/* 8048D9B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D9B8  4E 80 00 20 */	blr 
