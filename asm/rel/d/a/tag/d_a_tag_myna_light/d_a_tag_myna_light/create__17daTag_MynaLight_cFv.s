lbl_80D5CB38:
/* 80D5CB38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5CB3C  7C 08 02 A6 */	mflr r0
/* 80D5CB40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5CB44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5CB48  7C 7F 1B 78 */	mr r31, r3
/* 80D5CB4C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D5CB50  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D5CB54  40 82 00 28 */	bne lbl_80D5CB7C
/* 80D5CB58  28 1F 00 00 */	cmplwi r31, 0
/* 80D5CB5C  41 82 00 14 */	beq lbl_80D5CB70
/* 80D5CB60  4B 2B C0 04 */	b __ct__10fopAc_ac_cFv
/* 80D5CB64  3C 60 80 D6 */	lis r3, __vt__17daTag_MynaLight_c@ha
/* 80D5CB68  38 03 D3 98 */	addi r0, r3, __vt__17daTag_MynaLight_c@l
/* 80D5CB6C  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80D5CB70:
/* 80D5CB70  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D5CB74  60 00 00 08 */	ori r0, r0, 8
/* 80D5CB78  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D5CB7C:
/* 80D5CB7C  7F E3 FB 78 */	mr r3, r31
/* 80D5CB80  48 00 05 E1 */	bl initialize__17daTag_MynaLight_cFv
/* 80D5CB84  38 60 00 04 */	li r3, 4
/* 80D5CB88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5CB8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5CB90  7C 08 03 A6 */	mtlr r0
/* 80D5CB94  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5CB98  4E 80 00 20 */	blr 
