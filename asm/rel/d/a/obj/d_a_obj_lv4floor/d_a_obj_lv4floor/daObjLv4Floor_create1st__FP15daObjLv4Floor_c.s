lbl_80C67CAC:
/* 80C67CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67CB0  7C 08 02 A6 */	mflr r0
/* 80C67CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67CB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C67CBC  7C 7F 1B 78 */	mr r31, r3
/* 80C67CC0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C67CC4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C67CC8  40 82 00 28 */	bne lbl_80C67CF0
/* 80C67CCC  28 1F 00 00 */	cmplwi r31, 0
/* 80C67CD0  41 82 00 14 */	beq lbl_80C67CE4
/* 80C67CD4  4B 41 09 50 */	b __ct__16dBgS_MoveBgActorFv
/* 80C67CD8  3C 60 80 C6 */	lis r3, __vt__15daObjLv4Floor_c@ha
/* 80C67CDC  38 03 7E 58 */	addi r0, r3, __vt__15daObjLv4Floor_c@l
/* 80C67CE0  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80C67CE4:
/* 80C67CE4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C67CE8  60 00 00 08 */	ori r0, r0, 8
/* 80C67CEC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C67CF0:
/* 80C67CF0  7F E3 FB 78 */	mr r3, r31
/* 80C67CF4  4B FF FC 51 */	bl create1st__15daObjLv4Floor_cFv
/* 80C67CF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C67CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67D00  7C 08 03 A6 */	mtlr r0
/* 80C67D04  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67D08  4E 80 00 20 */	blr 
