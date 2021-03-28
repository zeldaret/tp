lbl_8057BCFC:
/* 8057BCFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BD00  7C 08 02 A6 */	mflr r0
/* 8057BD04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BD08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057BD0C  7C 7F 1B 78 */	mr r31, r3
/* 8057BD10  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8057BD14  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8057BD18  40 82 00 28 */	bne lbl_8057BD40
/* 8057BD1C  28 1F 00 00 */	cmplwi r31, 0
/* 8057BD20  41 82 00 14 */	beq lbl_8057BD34
/* 8057BD24  4B AF C9 00 */	b __ct__16dBgS_MoveBgActorFv
/* 8057BD28  3C 60 80 58 */	lis r3, __vt__12daObjBoard_c@ha
/* 8057BD2C  38 03 BE E0 */	addi r0, r3, __vt__12daObjBoard_c@l
/* 8057BD30  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_8057BD34:
/* 8057BD34  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8057BD38  60 00 00 08 */	ori r0, r0, 8
/* 8057BD3C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8057BD40:
/* 8057BD40  7F E3 FB 78 */	mr r3, r31
/* 8057BD44  4B FF FD 35 */	bl create1st__12daObjBoard_cFv
/* 8057BD48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057BD4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BD50  7C 08 03 A6 */	mtlr r0
/* 8057BD54  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BD58  4E 80 00 20 */	blr 
