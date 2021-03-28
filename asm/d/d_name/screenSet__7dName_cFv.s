lbl_802505CC:
/* 802505CC  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 802505D0  7C 08 02 A6 */	mflr r0
/* 802505D4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 802505D8  39 61 00 E0 */	addi r11, r1, 0xe0
/* 802505DC  48 11 1B D9 */	bl _savegpr_19
/* 802505E0  7C 7F 1B 78 */	mr r31, r3
/* 802505E4  3C 60 80 3C */	lis r3, cNullVec__6Z2Calc@ha
/* 802505E8  3B C3 1F 50 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 802505EC  38 60 01 18 */	li r3, 0x118
/* 802505F0  48 07 E6 5D */	bl __nw__FUl
/* 802505F4  7C 60 1B 79 */	or. r0, r3, r3
/* 802505F8  41 82 00 0C */	beq lbl_80250604
/* 802505FC  48 0A 7E 9D */	bl __ct__9J2DScreenFv
/* 80250600  7C 60 1B 78 */	mr r0, r3
lbl_80250604:
/* 80250604  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80250608  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025060C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80250610  80 03 5C D4 */	lwz r0, 0x5cd4(r3)
/* 80250614  90 1F 00 08 */	stw r0, 8(r31)
/* 80250618  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8025061C  3C 80 80 3A */	lis r4, d_d_name__stringBase0@ha
/* 80250620  38 84 9C C8 */	addi r4, r4, d_d_name__stringBase0@l
/* 80250624  38 84 02 D1 */	addi r4, r4, 0x2d1
/* 80250628  3C A0 00 10 */	lis r5, 0x10
/* 8025062C  80 DF 00 08 */	lwz r6, 8(r31)
/* 80250630  48 0A 80 19 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 80250634  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80250638  48 00 4A B1 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8025063C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80250640  3C 80 6D 65 */	lis r4, 0x6D65 /* 0x6D655F6E@ha */
/* 80250644  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x6D655F6E@l */
/* 80250648  38 A0 6E 61 */	li r5, 0x6e61
/* 8025064C  81 83 00 00 */	lwz r12, 0(r3)
/* 80250650  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80250654  7D 89 03 A6 */	mtctr r12
/* 80250658  4E 80 04 21 */	bctrl 
/* 8025065C  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 80250660  3C 60 80 3A */	lis r3, d_d_name__stringBase0@ha
/* 80250664  38 63 9C C8 */	addi r3, r3, d_d_name__stringBase0@l
/* 80250668  38 63 02 E7 */	addi r3, r3, 0x2e7
/* 8025066C  80 9F 00 08 */	lwz r4, 8(r31)
/* 80250670  48 08 3C 01 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 80250674  48 0B 83 F9 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 80250678  90 7F 00 24 */	stw r3, 0x24(r31)
/* 8025067C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80250680  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80250684  81 83 00 00 */	lwz r12, 0(r3)
/* 80250688  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8025068C  7D 89 03 A6 */	mtctr r12
/* 80250690  4E 80 04 21 */	bctrl 
/* 80250694  3C 60 80 3A */	lis r3, d_d_name__stringBase0@ha
/* 80250698  38 63 9C C8 */	addi r3, r3, d_d_name__stringBase0@l
/* 8025069C  38 63 02 FD */	addi r3, r3, 0x2fd
/* 802506A0  80 9F 00 08 */	lwz r4, 8(r31)
/* 802506A4  48 08 3B CD */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 802506A8  48 0B 83 C5 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 802506AC  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 802506B0  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 802506B4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 802506B8  81 83 00 00 */	lwz r12, 0(r3)
/* 802506BC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802506C0  7D 89 03 A6 */	mtctr r12
/* 802506C4  4E 80 04 21 */	bctrl 
/* 802506C8  3A 80 00 00 */	li r20, 0
/* 802506CC  3B 00 00 00 */	li r24, 0
/* 802506D0  3B 20 00 00 */	li r25, 0
/* 802506D4  3B 7E 08 38 */	addi r27, r30, 0x838
/* 802506D8  3A E1 00 84 */	addi r23, r1, 0x84
/* 802506DC  3B 5E 08 78 */	addi r26, r30, 0x878
/* 802506E0  3B A1 00 64 */	addi r29, r1, 0x64
lbl_802506E4:
/* 802506E4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802506E8  7C DB CA 14 */	add r6, r27, r25
/* 802506EC  80 A6 00 00 */	lwz r5, 0(r6)
/* 802506F0  80 C6 00 04 */	lwz r6, 4(r6)
/* 802506F4  81 83 00 00 */	lwz r12, 0(r3)
/* 802506F8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802506FC  7D 89 03 A6 */	mtctr r12
/* 80250700  4E 80 04 21 */	bctrl 
/* 80250704  7C 77 C1 2E */	stwx r3, r23, r24
/* 80250708  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8025070C  7C DA CA 14 */	add r6, r26, r25
/* 80250710  80 A6 00 00 */	lwz r5, 0(r6)
/* 80250714  80 C6 00 04 */	lwz r6, 4(r6)
/* 80250718  81 83 00 00 */	lwz r12, 0(r3)
/* 8025071C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80250720  7D 89 03 A6 */	mtctr r12
/* 80250724  4E 80 04 21 */	bctrl 
/* 80250728  7C 7D C1 2E */	stwx r3, r29, r24
/* 8025072C  7F 97 C0 2E */	lwzx r28, r23, r24
/* 80250730  7F 83 E3 78 */	mr r3, r28
/* 80250734  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 80250738  81 9C 00 00 */	lwz r12, 0(r28)
/* 8025073C  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 80250740  7D 89 03 A6 */	mtctr r12
/* 80250744  4E 80 04 21 */	bctrl 
/* 80250748  7F 83 E3 78 */	mr r3, r28
/* 8025074C  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80250750  81 9C 00 00 */	lwz r12, 0(r28)
/* 80250754  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 80250758  7D 89 03 A6 */	mtctr r12
/* 8025075C  4E 80 04 21 */	bctrl 
/* 80250760  7F 9D C0 2E */	lwzx r28, r29, r24
/* 80250764  7F 83 E3 78 */	mr r3, r28
/* 80250768  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 8025076C  81 9C 00 00 */	lwz r12, 0(r28)
/* 80250770  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 80250774  7D 89 03 A6 */	mtctr r12
/* 80250778  4E 80 04 21 */	bctrl 
/* 8025077C  7F 83 E3 78 */	mr r3, r28
/* 80250780  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80250784  81 9C 00 00 */	lwz r12, 0(r28)
/* 80250788  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8025078C  7D 89 03 A6 */	mtctr r12
/* 80250790  4E 80 04 21 */	bctrl 
/* 80250794  3A 94 00 01 */	addi r20, r20, 1
/* 80250798  2C 14 00 08 */	cmpwi r20, 8
/* 8025079C  3B 18 00 04 */	addi r24, r24, 4
/* 802507A0  3B 39 00 08 */	addi r25, r25, 8
/* 802507A4  41 80 FF 40 */	blt lbl_802506E4
/* 802507A8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802507AC  3C 80 70 6E */	lis r4, 0x706E /* 0x706E5F6E@ha */
/* 802507B0  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x706E5F6E@l */
/* 802507B4  38 A0 00 6A */	li r5, 0x6a
/* 802507B8  81 83 00 00 */	lwz r12, 0(r3)
/* 802507BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802507C0  7D 89 03 A6 */	mtctr r12
/* 802507C4  4E 80 04 21 */	bctrl 
/* 802507C8  38 00 00 00 */	li r0, 0
/* 802507CC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 802507D0  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802507D4  3C 80 61 6C */	lis r4, 0x616C /* 0x616C5F6E@ha */
/* 802507D8  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x616C5F6E@l */
/* 802507DC  38 A0 00 70 */	li r5, 0x70
/* 802507E0  81 83 00 00 */	lwz r12, 0(r3)
/* 802507E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802507E8  7D 89 03 A6 */	mtctr r12
/* 802507EC  4E 80 04 21 */	bctrl 
/* 802507F0  90 7F 02 80 */	stw r3, 0x280(r31)
/* 802507F4  38 00 00 01 */	li r0, 1
/* 802507F8  80 7F 02 80 */	lwz r3, 0x280(r31)
/* 802507FC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80250800  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80250804  3C 80 72 61 */	lis r4, 0x7261 /* 0x72615F6E@ha */
/* 80250808  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x72615F6E@l */
/* 8025080C  3C 80 6A 5F */	lis r4, 0x6A5F /* 0x6A5F6869@ha */
/* 80250810  38 A4 68 69 */	addi r5, r4, 0x6869 /* 0x6A5F6869@l */
/* 80250814  81 83 00 00 */	lwz r12, 0(r3)
/* 80250818  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025081C  7D 89 03 A6 */	mtctr r12
/* 80250820  4E 80 04 21 */	bctrl 
/* 80250824  C0 02 B3 D0 */	lfs f0, lit_4009(r2)
/* 80250828  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8025082C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80250830  81 83 00 00 */	lwz r12, 0(r3)
/* 80250834  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80250838  7D 89 03 A6 */	mtctr r12
/* 8025083C  4E 80 04 21 */	bctrl 
/* 80250840  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80250844  3C 80 74 61 */	lis r4, 0x7461 /* 0x74615F6E@ha */
/* 80250848  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x74615F6E@l */
/* 8025084C  3C 80 6A 5F */	lis r4, 0x6A5F /* 0x6A5F6B61@ha */
/* 80250850  38 A4 6B 61 */	addi r5, r4, 0x6B61 /* 0x6A5F6B61@l */
/* 80250854  81 83 00 00 */	lwz r12, 0(r3)
/* 80250858  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025085C  7D 89 03 A6 */	mtctr r12
/* 80250860  4E 80 04 21 */	bctrl 
/* 80250864  C0 02 B3 D0 */	lfs f0, lit_4009(r2)
/* 80250868  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8025086C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80250870  81 83 00 00 */	lwz r12, 0(r3)
/* 80250874  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80250878  7D 89 03 A6 */	mtctr r12
/* 8025087C  4E 80 04 21 */	bctrl 
/* 80250880  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80250884  3C 80 67 6F */	lis r4, 0x676F /* 0x676F5F6E@ha */
/* 80250888  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x676F5F6E@l */
/* 8025088C  3C 80 6A 5F */	lis r4, 0x6A5F /* 0x6A5F6569@ha */
/* 80250890  38 A4 65 69 */	addi r5, r4, 0x6569 /* 0x6A5F6569@l */
/* 80250894  81 83 00 00 */	lwz r12, 0(r3)
/* 80250898  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025089C  7D 89 03 A6 */	mtctr r12
/* 802508A0  4E 80 04 21 */	bctrl 
/* 802508A4  C0 02 B3 D0 */	lfs f0, lit_4009(r2)
/* 802508A8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 802508AC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 802508B0  81 83 00 00 */	lwz r12, 0(r3)
/* 802508B4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802508B8  7D 89 03 A6 */	mtctr r12
/* 802508BC  4E 80 04 21 */	bctrl 
/* 802508C0  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802508C4  3C 80 6E 64 */	lis r4, 0x6E64 /* 0x6E645F6E@ha */
/* 802508C8  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x6E645F6E@l */
/* 802508CC  3C 80 00 6A */	lis r4, 0x006A /* 0x006A5F65@ha */
/* 802508D0  38 A4 5F 65 */	addi r5, r4, 0x5F65 /* 0x006A5F65@l */
/* 802508D4  81 83 00 00 */	lwz r12, 0(r3)
/* 802508D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802508DC  7D 89 03 A6 */	mtctr r12
/* 802508E0  4E 80 04 21 */	bctrl 
/* 802508E4  C0 02 B3 D0 */	lfs f0, lit_4009(r2)
/* 802508E8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 802508EC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 802508F0  81 83 00 00 */	lwz r12, 0(r3)
/* 802508F4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802508F8  7D 89 03 A6 */	mtctr r12
/* 802508FC  4E 80 04 21 */	bctrl 
/* 80250900  3B A0 00 00 */	li r29, 0
/* 80250904  3B 60 00 00 */	li r27, 0
/* 80250908  3B 80 00 00 */	li r28, 0
/* 8025090C  3B 40 00 00 */	li r26, 0
lbl_80250910:
/* 80250910  2C 1D 00 02 */	cmpwi r29, 2
/* 80250914  40 82 00 18 */	bne lbl_8025092C
/* 80250918  38 00 00 00 */	li r0, 0
/* 8025091C  7C 7F D2 14 */	add r3, r31, r26
/* 80250920  90 03 02 84 */	stw r0, 0x284(r3)
/* 80250924  90 03 02 94 */	stw r0, 0x294(r3)
/* 80250928  48 00 00 DC */	b lbl_80250A04
lbl_8025092C:
/* 8025092C  38 60 00 6C */	li r3, 0x6c
/* 80250930  48 07 E3 1D */	bl __nw__FUl
/* 80250934  7C 60 1B 79 */	or. r0, r3, r3
/* 80250938  41 82 00 28 */	beq lbl_80250960
/* 8025093C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80250940  38 1E 08 B8 */	addi r0, r30, 0x8b8
/* 80250944  7C C0 E2 14 */	add r6, r0, r28
/* 80250948  80 A6 00 00 */	lwz r5, 0(r6)
/* 8025094C  80 C6 00 04 */	lwz r6, 4(r6)
/* 80250950  38 E0 00 01 */	li r7, 1
/* 80250954  39 00 00 00 */	li r8, 0
/* 80250958  48 00 30 2D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8025095C  7C 60 1B 78 */	mr r0, r3
lbl_80250960:
/* 80250960  7E DF D2 14 */	add r22, r31, r26
/* 80250964  90 16 02 84 */	stw r0, 0x284(r22)
/* 80250968  38 61 00 28 */	addi r3, r1, 0x28
/* 8025096C  38 9E 09 50 */	addi r4, r30, 0x950
/* 80250970  7C 84 D0 2E */	lwzx r4, r4, r26
/* 80250974  4B DC F7 4D */	bl fopMsgM_messageGet__FPcUl
/* 80250978  3A 60 00 00 */	li r19, 0
/* 8025097C  3B 20 00 00 */	li r25, 0
/* 80250980  3B 00 00 00 */	li r24, 0
/* 80250984  3A FE 08 D8 */	addi r23, r30, 0x8d8
/* 80250988  7E F7 DA 14 */	add r23, r23, r27
/* 8025098C  3A A1 00 38 */	addi r21, r1, 0x38
lbl_80250990:
/* 80250990  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80250994  7C D7 C2 14 */	add r6, r23, r24
/* 80250998  80 A6 00 00 */	lwz r5, 0(r6)
/* 8025099C  80 C6 00 04 */	lwz r6, 4(r6)
/* 802509A0  81 83 00 00 */	lwz r12, 0(r3)
/* 802509A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802509A8  7D 89 03 A6 */	mtctr r12
/* 802509AC  4E 80 04 21 */	bctrl 
/* 802509B0  7C 75 C9 2E */	stwx r3, r21, r25
/* 802509B4  2C 13 00 00 */	cmpwi r19, 0
/* 802509B8  40 82 00 0C */	bne lbl_802509C4
/* 802509BC  7C 15 C8 2E */	lwzx r0, r21, r25
/* 802509C0  90 16 02 94 */	stw r0, 0x294(r22)
lbl_802509C4:
/* 802509C4  7E 95 C8 2E */	lwzx r20, r21, r25
/* 802509C8  7E 83 A3 78 */	mr r3, r20
/* 802509CC  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 802509D0  81 94 00 00 */	lwz r12, 0(r20)
/* 802509D4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 802509D8  7D 89 03 A6 */	mtctr r12
/* 802509DC  4E 80 04 21 */	bctrl 
/* 802509E0  7E 83 A3 78 */	mr r3, r20
/* 802509E4  38 81 00 28 */	addi r4, r1, 0x28
/* 802509E8  4C C6 31 82 */	crclr 6
/* 802509EC  48 0A FC 75 */	bl setString__10J2DTextBoxFPCce
/* 802509F0  3A 73 00 01 */	addi r19, r19, 1
/* 802509F4  2C 13 00 03 */	cmpwi r19, 3
/* 802509F8  3B 39 00 04 */	addi r25, r25, 4
/* 802509FC  3B 18 00 08 */	addi r24, r24, 8
/* 80250A00  41 80 FF 90 */	blt lbl_80250990
lbl_80250A04:
/* 80250A04  3B BD 00 01 */	addi r29, r29, 1
/* 80250A08  2C 1D 00 04 */	cmpwi r29, 4
/* 80250A0C  3B 7B 00 18 */	addi r27, r27, 0x18
/* 80250A10  3B 9C 00 08 */	addi r28, r28, 8
/* 80250A14  3B 5A 00 04 */	addi r26, r26, 4
/* 80250A18  41 80 FE F8 */	blt lbl_80250910
/* 80250A1C  80 7F 02 84 */	lwz r3, 0x284(r31)
/* 80250A20  48 00 4B E9 */	bl hide__13CPaneMgrAlphaFv
/* 80250A24  80 7F 02 88 */	lwz r3, 0x288(r31)
/* 80250A28  48 00 4B E1 */	bl hide__13CPaneMgrAlphaFv
/* 80250A2C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80250A30  3C 80 6A 69 */	lis r4, 0x6A69 /* 0x6A695F6E@ha */
/* 80250A34  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x6A695F6E@l */
/* 80250A38  38 A0 6D 6F */	li r5, 0x6d6f
/* 80250A3C  81 83 00 00 */	lwz r12, 0(r3)
/* 80250A40  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80250A44  7D 89 03 A6 */	mtctr r12
/* 80250A48  4E 80 04 21 */	bctrl 
/* 80250A4C  90 7F 02 7C */	stw r3, 0x27c(r31)
/* 80250A50  3B A0 00 00 */	li r29, 0
/* 80250A54  3B 60 00 00 */	li r27, 0
/* 80250A58  3B 80 00 00 */	li r28, 0
/* 80250A5C  3C 60 80 3A */	lis r3, d_d_name__stringBase0@ha
/* 80250A60  3B 03 9C C8 */	addi r24, r3, d_d_name__stringBase0@l
lbl_80250A64:
/* 80250A64  38 60 00 6C */	li r3, 0x6c
/* 80250A68  48 07 E1 E5 */	bl __nw__FUl
/* 80250A6C  7C 60 1B 79 */	or. r0, r3, r3
/* 80250A70  41 82 00 28 */	beq lbl_80250A98
/* 80250A74  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80250A78  38 1E 09 60 */	addi r0, r30, 0x960
/* 80250A7C  7C C0 E2 14 */	add r6, r0, r28
/* 80250A80  80 A6 00 00 */	lwz r5, 0(r6)
/* 80250A84  80 C6 00 04 */	lwz r6, 4(r6)
/* 80250A88  38 E0 00 02 */	li r7, 2
/* 80250A8C  39 00 00 00 */	li r8, 0
/* 80250A90  48 00 2E F5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80250A94  7C 60 1B 78 */	mr r0, r3
lbl_80250A98:
/* 80250A98  7E 9F DA 14 */	add r20, r31, r27
/* 80250A9C  90 14 00 74 */	stw r0, 0x74(r20)
/* 80250AA0  80 74 00 74 */	lwz r3, 0x74(r20)
/* 80250AA4  80 63 00 04 */	lwz r3, 4(r3)
/* 80250AA8  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80250AAC  81 83 00 00 */	lwz r12, 0(r3)
/* 80250AB0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80250AB4  7D 89 03 A6 */	mtctr r12
/* 80250AB8  4E 80 04 21 */	bctrl 
/* 80250ABC  80 74 00 74 */	lwz r3, 0x74(r20)
/* 80250AC0  80 63 00 04 */	lwz r3, 4(r3)
/* 80250AC4  38 80 00 48 */	li r4, 0x48
/* 80250AC8  38 B8 03 13 */	addi r5, r24, 0x313
/* 80250ACC  4C C6 31 82 */	crclr 6
/* 80250AD0  48 0A FC 7D */	bl setString__10J2DTextBoxFsPCce
/* 80250AD4  80 74 00 74 */	lwz r3, 0x74(r20)
/* 80250AD8  80 63 00 04 */	lwz r3, 4(r3)
/* 80250ADC  48 0A FB 7D */	bl getStringPtr__10J2DTextBoxCFv
/* 80250AE0  90 74 01 78 */	stw r3, 0x178(r20)
/* 80250AE4  3B BD 00 01 */	addi r29, r29, 1
/* 80250AE8  28 1D 00 41 */	cmplwi r29, 0x41
/* 80250AEC  3B 7B 00 04 */	addi r27, r27, 4
/* 80250AF0  3B 9C 00 08 */	addi r28, r28, 8
/* 80250AF4  41 80 FF 70 */	blt lbl_80250A64
/* 80250AF8  3B A0 00 00 */	li r29, 0
/* 80250AFC  3B 80 00 00 */	li r28, 0
/* 80250B00  3B 60 00 00 */	li r27, 0
/* 80250B04  3B 3E 0B 68 */	addi r25, r30, 0xb68
/* 80250B08  3A 81 00 44 */	addi r20, r1, 0x44
/* 80250B0C  3C 60 80 3A */	lis r3, d_d_name__stringBase0@ha
/* 80250B10  3B 03 9C C8 */	addi r24, r3, d_d_name__stringBase0@l
lbl_80250B14:
/* 80250B14  38 60 00 1C */	li r3, 0x1c
/* 80250B18  48 07 E1 35 */	bl __nw__FUl
/* 80250B1C  7C 60 1B 79 */	or. r0, r3, r3
/* 80250B20  41 82 00 28 */	beq lbl_80250B48
/* 80250B24  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80250B28  38 1E 0B A8 */	addi r0, r30, 0xba8
/* 80250B2C  7C C0 DA 14 */	add r6, r0, r27
/* 80250B30  80 A6 00 00 */	lwz r5, 0(r6)
/* 80250B34  80 C6 00 04 */	lwz r6, 4(r6)
/* 80250B38  38 E0 00 02 */	li r7, 2
/* 80250B3C  39 00 00 00 */	li r8, 0
/* 80250B40  48 00 48 BD */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 80250B44  7C 60 1B 78 */	mr r0, r3
lbl_80250B48:
/* 80250B48  7E DF E2 14 */	add r22, r31, r28
/* 80250B4C  90 16 00 34 */	stw r0, 0x34(r22)
/* 80250B50  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80250B54  7C D9 DA 14 */	add r6, r25, r27
/* 80250B58  80 A6 00 00 */	lwz r5, 0(r6)
/* 80250B5C  80 C6 00 04 */	lwz r6, 4(r6)
/* 80250B60  81 83 00 00 */	lwz r12, 0(r3)
/* 80250B64  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80250B68  7D 89 03 A6 */	mtctr r12
/* 80250B6C  4E 80 04 21 */	bctrl 
/* 80250B70  7C 74 E1 2E */	stwx r3, r20, r28
/* 80250B74  7E B4 E0 2E */	lwzx r21, r20, r28
/* 80250B78  7E A3 AB 78 */	mr r3, r21
/* 80250B7C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80250B80  81 95 00 00 */	lwz r12, 0(r21)
/* 80250B84  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80250B88  7D 89 03 A6 */	mtctr r12
/* 80250B8C  4E 80 04 21 */	bctrl 
/* 80250B90  7E A3 AB 78 */	mr r3, r21
/* 80250B94  38 80 00 48 */	li r4, 0x48
/* 80250B98  38 B8 03 13 */	addi r5, r24, 0x313
/* 80250B9C  4C C6 31 82 */	crclr 6
/* 80250BA0  48 0A FB AD */	bl setString__10J2DTextBoxFsPCce
/* 80250BA4  38 00 00 C8 */	li r0, 0xc8
/* 80250BA8  98 01 00 08 */	stb r0, 8(r1)
/* 80250BAC  98 01 00 09 */	stb r0, 9(r1)
/* 80250BB0  98 01 00 0A */	stb r0, 0xa(r1)
/* 80250BB4  38 00 00 FF */	li r0, 0xff
/* 80250BB8  98 01 00 0B */	stb r0, 0xb(r1)
/* 80250BBC  80 01 00 08 */	lwz r0, 8(r1)
/* 80250BC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80250BC4  7E A3 AB 78 */	mr r3, r21
/* 80250BC8  38 81 00 0C */	addi r4, r1, 0xc
/* 80250BCC  81 95 00 00 */	lwz r12, 0(r21)
/* 80250BD0  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 80250BD4  7D 89 03 A6 */	mtctr r12
/* 80250BD8  4E 80 04 21 */	bctrl 
/* 80250BDC  7E A3 AB 78 */	mr r3, r21
/* 80250BE0  48 0A FA 79 */	bl getStringPtr__10J2DTextBoxCFv
/* 80250BE4  90 76 00 54 */	stw r3, 0x54(r22)
/* 80250BE8  3B BD 00 01 */	addi r29, r29, 1
/* 80250BEC  2C 1D 00 08 */	cmpwi r29, 8
/* 80250BF0  3B 9C 00 04 */	addi r28, r28, 4
/* 80250BF4  3B 7B 00 08 */	addi r27, r27, 8
/* 80250BF8  41 80 FF 1C */	blt lbl_80250B14
/* 80250BFC  38 00 00 00 */	li r0, 0
/* 80250C00  98 1F 02 A5 */	stb r0, 0x2a5(r31)
/* 80250C04  98 1F 02 A7 */	stb r0, 0x2a7(r31)
/* 80250C08  38 60 00 B8 */	li r3, 0xb8
/* 80250C0C  48 07 E0 41 */	bl __nw__FUl
/* 80250C10  7C 60 1B 79 */	or. r0, r3, r3
/* 80250C14  41 82 00 18 */	beq lbl_80250C2C
/* 80250C18  38 80 00 00 */	li r4, 0
/* 80250C1C  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 80250C20  38 A0 00 00 */	li r5, 0
/* 80250C24  4B F4 35 FD */	bl __ct__16dSelect_cursor_cFUcfP10JKRArchive
/* 80250C28  7C 60 1B 78 */	mr r0, r3
lbl_80250C2C:
/* 80250C2C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80250C30  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80250C34  C0 22 B3 D4 */	lfs f1, lit_4722(r2)
/* 80250C38  C0 42 B3 D8 */	lfs f2, lit_4723(r2)
/* 80250C3C  C0 62 B3 DC */	lfs f3, lit_4724(r2)
/* 80250C40  C0 82 B3 E0 */	lfs f4, lit_4725(r2)
/* 80250C44  FC A0 20 90 */	fmr f5, f4
/* 80250C48  4B F4 45 69 */	bl setParam__16dSelect_cursor_cFfffff
/* 80250C4C  88 7F 02 A7 */	lbz r3, 0x2a7(r31)
/* 80250C50  88 1F 02 A5 */	lbz r0, 0x2a5(r31)
/* 80250C54  1C 00 00 05 */	mulli r0, r0, 5
/* 80250C58  7C 03 02 14 */	add r0, r3, r0
/* 80250C5C  54 00 10 3A */	slwi r0, r0, 2
/* 80250C60  7C 7F 02 14 */	add r3, r31, r0
/* 80250C64  80 83 00 74 */	lwz r4, 0x74(r3)
/* 80250C68  38 61 00 10 */	addi r3, r1, 0x10
/* 80250C6C  80 A4 00 04 */	lwz r5, 4(r4)
/* 80250C70  38 C0 00 00 */	li r6, 0
/* 80250C74  38 E0 00 00 */	li r7, 0
/* 80250C78  48 00 42 45 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 80250C7C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80250C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80250C84  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80250C88  90 01 00 20 */	stw r0, 0x20(r1)
/* 80250C8C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80250C90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80250C94  88 7F 02 A7 */	lbz r3, 0x2a7(r31)
/* 80250C98  88 1F 02 A5 */	lbz r0, 0x2a5(r31)
/* 80250C9C  1C 00 00 05 */	mulli r0, r0, 5
/* 80250CA0  7C 03 02 14 */	add r0, r3, r0
/* 80250CA4  54 00 10 3A */	slwi r0, r0, 2
/* 80250CA8  7C 7F 02 14 */	add r3, r31, r0
/* 80250CAC  80 63 00 74 */	lwz r3, 0x74(r3)
/* 80250CB0  80 83 00 04 */	lwz r4, 4(r3)
/* 80250CB4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80250CB8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80250CBC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80250CC0  38 A0 00 01 */	li r5, 1
/* 80250CC4  4B F4 44 31 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 80250CC8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80250CCC  C0 22 B3 D0 */	lfs f1, lit_4009(r2)
/* 80250CD0  4B F4 45 D1 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 80250CD4  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80250CD8  48 11 15 29 */	bl _restgpr_19
/* 80250CDC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80250CE0  7C 08 03 A6 */	mtlr r0
/* 80250CE4  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80250CE8  4E 80 00 20 */	blr 
