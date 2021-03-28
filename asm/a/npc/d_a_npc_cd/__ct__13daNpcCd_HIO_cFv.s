lbl_80157600:
/* 80157600  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80157604  7C 08 02 A6 */	mflr r0
/* 80157608  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015760C  39 61 00 30 */	addi r11, r1, 0x30
/* 80157610  48 20 AB B1 */	bl _savegpr_22
/* 80157614  7C 7E 1B 78 */	mr r30, r3
/* 80157618  3C 60 80 3B */	lis r3, cNullVec__6Z2Calc@ha
/* 8015761C  3B E3 3B 80 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80157620  3C 60 80 3B */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80157624  38 03 61 B4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80157628  90 1E 00 00 */	stw r0, 0(r30)
/* 8015762C  3C 60 80 3B */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 80157630  38 03 61 A8 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 80157634  90 1E 00 00 */	stw r0, 0(r30)
/* 80157638  3C 60 80 3B */	lis r3, __vt__13daNpcCd_HIO_c@ha
/* 8015763C  38 03 61 9C */	addi r0, r3, __vt__13daNpcCd_HIO_c@l
/* 80157640  90 1E 00 00 */	stw r0, 0(r30)
/* 80157644  38 7E 00 04 */	addi r3, r30, 4
/* 80157648  3C 80 80 15 */	lis r4, __ct__19daNpcCd_HIO_Child_cFv@ha
/* 8015764C  38 84 78 58 */	addi r4, r4, __ct__19daNpcCd_HIO_Child_cFv@l
/* 80157650  3C A0 80 15 */	lis r5, __dt__19daNpcCd_HIO_Child_cFv@ha
/* 80157654  38 A5 77 A0 */	addi r5, r5, __dt__19daNpcCd_HIO_Child_cFv@l
/* 80157658  38 C0 01 64 */	li r6, 0x164
/* 8015765C  38 E0 00 10 */	li r7, 0x10
/* 80157660  48 20 A7 01 */	bl __construct_array
/* 80157664  38 7E 16 44 */	addi r3, r30, 0x1644
/* 80157668  3C 80 80 15 */	lis r4, __ct__19daNpcCd_HIO_Child_cFv@ha
/* 8015766C  38 84 78 58 */	addi r4, r4, __ct__19daNpcCd_HIO_Child_cFv@l
/* 80157670  3C A0 80 15 */	lis r5, __dt__19daNpcCd_HIO_Child_cFv@ha
/* 80157674  38 A5 77 A0 */	addi r5, r5, __dt__19daNpcCd_HIO_Child_cFv@l
/* 80157678  38 C0 01 64 */	li r6, 0x164
/* 8015767C  38 E0 00 0E */	li r7, 0xe
/* 80157680  48 20 A6 E1 */	bl __construct_array
/* 80157684  3A E0 00 00 */	li r23, 0
/* 80157688  3B 20 00 00 */	li r25, 0
/* 8015768C  3B 40 00 00 */	li r26, 0
/* 80157690  3B 60 00 00 */	li r27, 0
lbl_80157694:
/* 80157694  3A C0 00 00 */	li r22, 0
/* 80157698  3B 80 00 00 */	li r28, 0
/* 8015769C  3B A0 00 00 */	li r29, 0
/* 801576A0  3B 1F 02 64 */	addi r24, r31, 0x264
/* 801576A4  7F 18 DA 14 */	add r24, r24, r27
lbl_801576A8:
/* 801576A8  7C 7A EA 14 */	add r3, r26, r29
/* 801576AC  38 63 00 0C */	addi r3, r3, 0xc
/* 801576B0  7C 7E 1A 14 */	add r3, r30, r3
/* 801576B4  7C 98 E2 14 */	add r4, r24, r28
/* 801576B8  38 A0 00 14 */	li r5, 0x14
/* 801576BC  4B EA BE 85 */	bl memcpy
/* 801576C0  3A D6 00 01 */	addi r22, r22, 1
/* 801576C4  2C 16 00 0C */	cmpwi r22, 0xc
/* 801576C8  3B 9C 00 14 */	addi r28, r28, 0x14
/* 801576CC  3B BD 00 18 */	addi r29, r29, 0x18
/* 801576D0  41 80 FF D8 */	blt lbl_801576A8
/* 801576D4  38 7A 01 28 */	addi r3, r26, 0x128
/* 801576D8  7C 7E 1A 14 */	add r3, r30, r3
/* 801576DC  38 9F 11 64 */	addi r4, r31, 0x1164
/* 801576E0  7C 84 CA 14 */	add r4, r4, r25
/* 801576E4  38 A0 00 40 */	li r5, 0x40
/* 801576E8  4B EA BE 59 */	bl memcpy
/* 801576EC  3A F7 00 01 */	addi r23, r23, 1
/* 801576F0  2C 17 00 10 */	cmpwi r23, 0x10
/* 801576F4  3B 39 00 40 */	addi r25, r25, 0x40
/* 801576F8  3B 5A 01 64 */	addi r26, r26, 0x164
/* 801576FC  3B 7B 00 F0 */	addi r27, r27, 0xf0
/* 80157700  41 80 FF 94 */	blt lbl_80157694
/* 80157704  3A C0 00 00 */	li r22, 0
/* 80157708  3B A0 00 00 */	li r29, 0
/* 8015770C  3B 80 00 00 */	li r28, 0
/* 80157710  3B 60 00 00 */	li r27, 0
lbl_80157714:
/* 80157714  3A E0 00 00 */	li r23, 0
/* 80157718  3B 40 00 00 */	li r26, 0
/* 8015771C  3B 20 00 00 */	li r25, 0
/* 80157720  3B 1F 15 64 */	addi r24, r31, 0x1564
/* 80157724  7F 18 DA 14 */	add r24, r24, r27
lbl_80157728:
/* 80157728  7C 7C CA 14 */	add r3, r28, r25
/* 8015772C  38 63 16 4C */	addi r3, r3, 0x164c
/* 80157730  7C 7E 1A 14 */	add r3, r30, r3
/* 80157734  7C 98 D2 14 */	add r4, r24, r26
/* 80157738  38 A0 00 14 */	li r5, 0x14
/* 8015773C  4B EA BE 05 */	bl memcpy
/* 80157740  3A F7 00 01 */	addi r23, r23, 1
/* 80157744  2C 17 00 0C */	cmpwi r23, 0xc
/* 80157748  3B 5A 00 14 */	addi r26, r26, 0x14
/* 8015774C  3B 39 00 18 */	addi r25, r25, 0x18
/* 80157750  41 80 FF D8 */	blt lbl_80157728
/* 80157754  38 7C 17 68 */	addi r3, r28, 0x1768
/* 80157758  7C 7E 1A 14 */	add r3, r30, r3
/* 8015775C  38 9F 22 84 */	addi r4, r31, 0x2284
/* 80157760  7C 84 EA 14 */	add r4, r4, r29
/* 80157764  38 A0 00 40 */	li r5, 0x40
/* 80157768  4B EA BD D9 */	bl memcpy
/* 8015776C  3A D6 00 01 */	addi r22, r22, 1
/* 80157770  2C 16 00 0E */	cmpwi r22, 0xe
/* 80157774  3B BD 00 40 */	addi r29, r29, 0x40
/* 80157778  3B 9C 01 64 */	addi r28, r28, 0x164
/* 8015777C  3B 7B 00 F0 */	addi r27, r27, 0xf0
/* 80157780  41 80 FF 94 */	blt lbl_80157714
/* 80157784  7F C3 F3 78 */	mr r3, r30
/* 80157788  39 61 00 30 */	addi r11, r1, 0x30
/* 8015778C  48 20 AA 81 */	bl _restgpr_22
/* 80157790  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80157794  7C 08 03 A6 */	mtlr r0
/* 80157798  38 21 00 30 */	addi r1, r1, 0x30
/* 8015779C  4E 80 00 20 */	blr 
