lbl_805A3E34:
/* 805A3E34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A3E38  7C 08 02 A6 */	mflr r0
/* 805A3E3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3E40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A3E44  7C 7F 1B 78 */	mr r31, r3
/* 805A3E48  4B AD 4A 94 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 805A3E4C  7F E3 FB 78 */	mr r3, r31
/* 805A3E50  38 80 FF FF */	li r4, -1
/* 805A3E54  4B FF FF 4D */	bl __dt__12daTagHjump_cFv
/* 805A3E58  38 60 00 01 */	li r3, 1
/* 805A3E5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A3E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A3E64  7C 08 03 A6 */	mtlr r0
/* 805A3E68  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3E6C  4E 80 00 20 */	blr 
