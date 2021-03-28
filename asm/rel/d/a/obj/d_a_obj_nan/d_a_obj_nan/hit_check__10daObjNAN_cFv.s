lbl_80CA2658:
/* 80CA2658  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CA265C  7C 08 02 A6 */	mflr r0
/* 80CA2660  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CA2664  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80CA2668  7C 7F 1B 78 */	mr r31, r3
/* 80CA266C  38 7F 06 50 */	addi r3, r31, 0x650
/* 80CA2670  4B 3E 11 C0 */	b Move__10dCcD_GSttsFv
/* 80CA2674  38 7F 06 70 */	addi r3, r31, 0x670
/* 80CA2678  4B 3E 1D E8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80CA267C  28 03 00 00 */	cmplwi r3, 0
/* 80CA2680  41 82 00 78 */	beq lbl_80CA26F8
/* 80CA2684  38 7F 06 70 */	addi r3, r31, 0x670
/* 80CA2688  4B 3E 1E 70 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80CA268C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80CA2690  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80CA2694  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80CA2698  41 82 00 34 */	beq lbl_80CA26CC
/* 80CA269C  3C 60 80 CA */	lis r3, lit_4680@ha
/* 80CA26A0  38 83 33 A0 */	addi r4, r3, lit_4680@l
/* 80CA26A4  80 64 00 00 */	lwz r3, 0(r4)
/* 80CA26A8  80 04 00 04 */	lwz r0, 4(r4)
/* 80CA26AC  90 61 00 14 */	stw r3, 0x14(r1)
/* 80CA26B0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CA26B4  80 04 00 08 */	lwz r0, 8(r4)
/* 80CA26B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CA26BC  7F E3 FB 78 */	mr r3, r31
/* 80CA26C0  38 81 00 14 */	addi r4, r1, 0x14
/* 80CA26C4  4B FF DF 11 */	bl setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v
/* 80CA26C8  48 00 00 30 */	b lbl_80CA26F8
lbl_80CA26CC:
/* 80CA26CC  3C 60 80 CA */	lis r3, lit_4683@ha
/* 80CA26D0  38 83 33 AC */	addi r4, r3, lit_4683@l
/* 80CA26D4  80 64 00 00 */	lwz r3, 0(r4)
/* 80CA26D8  80 04 00 04 */	lwz r0, 4(r4)
/* 80CA26DC  90 61 00 08 */	stw r3, 8(r1)
/* 80CA26E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA26E4  80 04 00 08 */	lwz r0, 8(r4)
/* 80CA26E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CA26EC  7F E3 FB 78 */	mr r3, r31
/* 80CA26F0  38 81 00 08 */	addi r4, r1, 8
/* 80CA26F4  4B FF DE E1 */	bl setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v
lbl_80CA26F8:
/* 80CA26F8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80CA26FC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CA2700  7C 08 03 A6 */	mtlr r0
/* 80CA2704  38 21 00 50 */	addi r1, r1, 0x50
/* 80CA2708  4E 80 00 20 */	blr 
