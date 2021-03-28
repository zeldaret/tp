lbl_800D76C4:
/* 800D76C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D76C8  7C 08 02 A6 */	mflr r0
/* 800D76CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D76D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D76D4  7C 7F 1B 78 */	mr r31, r3
/* 800D76D8  38 80 00 AD */	li r4, 0xad
/* 800D76DC  38 A0 00 02 */	li r5, 2
/* 800D76E0  3C C0 80 39 */	lis r6, m__20daAlinkHIO_damage_c0@ha
/* 800D76E4  38 C6 E5 4C */	addi r6, r6, m__20daAlinkHIO_damage_c0@l
/* 800D76E8  38 C6 00 14 */	addi r6, r6, 0x14
/* 800D76EC  4B FD 60 05 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800D76F0  7F E3 FB 78 */	mr r3, r31
/* 800D76F4  38 80 01 21 */	li r4, 0x121
/* 800D76F8  38 A0 00 01 */	li r5, 1
/* 800D76FC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800D7700  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800D7704  4B FD 7D AD */	bl setFaceBck__9daAlink_cFUsiUs
/* 800D7708  7F E3 FB 78 */	mr r3, r31
/* 800D770C  38 80 00 27 */	li r4, 0x27
/* 800D7710  4B FD 83 99 */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800D7714  7F E3 FB 78 */	mr r3, r31
/* 800D7718  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010002@ha */
/* 800D771C  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00010002@l */
/* 800D7720  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D7724  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800D7728  7D 89 03 A6 */	mtctr r12
/* 800D772C  4E 80 04 21 */	bctrl 
/* 800D7730  7F E3 FB 78 */	mr r3, r31
/* 800D7734  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020014@ha */
/* 800D7738  38 84 00 14 */	addi r4, r4, 0x0014 /* 0x00020014@l */
/* 800D773C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D7740  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800D7744  7D 89 03 A6 */	mtctr r12
/* 800D7748  4E 80 04 21 */	bctrl 
/* 800D774C  7F E3 FB 78 */	mr r3, r31
/* 800D7750  48 00 D4 85 */	bl freeGrabItem__9daAlink_cFv
/* 800D7754  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D7758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D775C  7C 08 03 A6 */	mtlr r0
/* 800D7760  38 21 00 10 */	addi r1, r1, 0x10
/* 800D7764  4E 80 00 20 */	blr 
