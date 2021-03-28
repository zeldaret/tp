lbl_80136064:
/* 80136064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136068  7C 08 02 A6 */	mflr r0
/* 8013606C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80136074  7C 7F 1B 78 */	mr r31, r3
/* 80136078  38 80 02 A7 */	li r4, 0x2a7
/* 8013607C  38 A0 00 02 */	li r5, 2
/* 80136080  3C C0 80 39 */	lis r6, m__22daAlinkHIO_wlDamage_c0@ha
/* 80136084  38 C6 F3 C4 */	addi r6, r6, m__22daAlinkHIO_wlDamage_c0@l
/* 80136088  4B F7 76 69 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 8013608C  7F E3 FB 78 */	mr r3, r31
/* 80136090  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020014@ha */
/* 80136094  38 84 00 14 */	addi r4, r4, 0x0014 /* 0x00020014@l */
/* 80136098  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8013609C  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 801360A0  7D 89 03 A6 */	mtctr r12
/* 801360A4  4E 80 04 21 */	bctrl 
/* 801360A8  7F E3 FB 78 */	mr r3, r31
/* 801360AC  4B FA EB 29 */	bl freeGrabItem__9daAlink_cFv
/* 801360B0  7F E3 FB 78 */	mr r3, r31
/* 801360B4  38 80 00 90 */	li r4, 0x90
/* 801360B8  4B F7 99 F1 */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 801360BC  7F E3 FB 78 */	mr r3, r31
/* 801360C0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010034@ha */
/* 801360C4  38 84 00 34 */	addi r4, r4, 0x0034 /* 0x00010034@l */
/* 801360C8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 801360CC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 801360D0  7D 89 03 A6 */	mtctr r12
/* 801360D4  4E 80 04 21 */	bctrl 
/* 801360D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801360DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801360E0  7C 08 03 A6 */	mtlr r0
/* 801360E4  38 21 00 10 */	addi r1, r1, 0x10
/* 801360E8  4E 80 00 20 */	blr 
