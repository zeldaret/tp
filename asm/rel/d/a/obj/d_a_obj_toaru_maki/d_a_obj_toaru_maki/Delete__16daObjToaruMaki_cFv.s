lbl_80D133C0:
/* 80D133C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D133C4  7C 08 02 A6 */	mflr r0
/* 80D133C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D133CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D133D0  7C 7F 1B 78 */	mr r31, r3
/* 80D133D4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D133D8  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80D133DC  40 82 00 30 */	bne lbl_80D1340C
/* 80D133E0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D133E4  28 03 00 00 */	cmplwi r3, 0
/* 80D133E8  41 82 00 24 */	beq lbl_80D1340C
/* 80D133EC  4B 55 4D E9 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D133F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D133F4  41 82 00 18 */	beq lbl_80D1340C
/* 80D133F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D133FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D13400  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D13404  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80D13408  4B 36 0E 49 */	bl Release__4cBgSFP9dBgW_Base
lbl_80D1340C:
/* 80D1340C  7F E3 FB 78 */	mr r3, r31
/* 80D13410  38 80 FF FF */	li r4, -1
/* 80D13414  81 9F 05 70 */	lwz r12, 0x570(r31)
/* 80D13418  81 8C 00 08 */	lwz r12, 8(r12)
/* 80D1341C  7D 89 03 A6 */	mtctr r12
/* 80D13420  4E 80 04 21 */	bctrl 
/* 80D13424  38 60 00 01 */	li r3, 1
/* 80D13428  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1342C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D13430  7C 08 03 A6 */	mtlr r0
/* 80D13434  38 21 00 10 */	addi r1, r1, 0x10
/* 80D13438  4E 80 00 20 */	blr 
