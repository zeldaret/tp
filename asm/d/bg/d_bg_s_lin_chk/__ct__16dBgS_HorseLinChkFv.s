lbl_80078460:
/* 80078460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078464  7C 08 02 A6 */	mflr r0
/* 80078468  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007846C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078470  7C 7F 1B 78 */	mr r31, r3
/* 80078474  4B FF F7 F5 */	bl __ct__11dBgS_LinChkFv
/* 80078478  3C 60 80 3B */	lis r3, __vt__16dBgS_HorseLinChk@ha
/* 8007847C  38 63 B7 C0 */	addi r3, r3, __vt__16dBgS_HorseLinChk@l
/* 80078480  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80078484  38 03 00 0C */	addi r0, r3, 0xc
/* 80078488  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8007848C  38 03 00 18 */	addi r0, r3, 0x18
/* 80078490  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80078494  38 03 00 24 */	addi r0, r3, 0x24
/* 80078498  90 1F 00 68 */	stw r0, 0x68(r31)
/* 8007849C  38 7F 00 58 */	addi r3, r31, 0x58
/* 800784A0  48 00 0A 59 */	bl SetHorse__16dBgS_PolyPassChkFv
/* 800784A4  7F E3 FB 78 */	mr r3, r31
/* 800784A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800784AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800784B0  7C 08 03 A6 */	mtlr r0
/* 800784B4  38 21 00 10 */	addi r1, r1, 0x10
/* 800784B8  4E 80 00 20 */	blr 
