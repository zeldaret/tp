lbl_802A0768:
/* 802A0768  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802A076C  7C 08 02 A6 */	mflr r0
/* 802A0770  90 01 00 44 */	stw r0, 0x44(r1)
/* 802A0774  39 61 00 40 */	addi r11, r1, 0x40
/* 802A0778  48 0C 1A 55 */	bl _savegpr_25
/* 802A077C  7C 7C 1B 78 */	mr r28, r3
/* 802A0780  7C 9D 23 78 */	mr r29, r4
/* 802A0784  7C BE 2B 79 */	or. r30, r5, r5
/* 802A0788  7C DF 33 78 */	mr r31, r6
/* 802A078C  41 82 00 14 */	beq lbl_802A07A0
/* 802A0790  80 7E 00 00 */	lwz r3, 0(r30)
/* 802A0794  28 03 00 00 */	cmplwi r3, 0
/* 802A0798  41 82 00 08 */	beq lbl_802A07A0
/* 802A079C  48 00 1D FD */	bl stop__8JAISoundFv
lbl_802A07A0:
/* 802A07A0  83 6D 85 DC */	lwz r27, data_80450B5C(r13)
/* 802A07A4  28 1B 00 00 */	cmplwi r27, 0
/* 802A07A8  41 82 00 50 */	beq lbl_802A07F8
/* 802A07AC  80 1D 00 00 */	lwz r0, 0(r29)
/* 802A07B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A07B4  7F 63 DB 78 */	mr r3, r27
/* 802A07B8  38 81 00 14 */	addi r4, r1, 0x14
/* 802A07BC  81 9B 00 00 */	lwz r12, 0(r27)
/* 802A07C0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A07C4  7D 89 03 A6 */	mtctr r12
/* 802A07C8  4E 80 04 21 */	bctrl 
/* 802A07CC  7C 7A 1B 78 */	mr r26, r3
/* 802A07D0  80 1D 00 00 */	lwz r0, 0(r29)
/* 802A07D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802A07D8  7F 63 DB 78 */	mr r3, r27
/* 802A07DC  38 81 00 10 */	addi r4, r1, 0x10
/* 802A07E0  81 9B 00 00 */	lwz r12, 0(r27)
/* 802A07E4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A07E8  7D 89 03 A6 */	mtctr r12
/* 802A07EC  4E 80 04 21 */	bctrl 
/* 802A07F0  7C 65 1B 78 */	mr r5, r3
/* 802A07F4  48 00 00 0C */	b lbl_802A0800
lbl_802A07F8:
/* 802A07F8  8B 5D 00 01 */	lbz r26, 1(r29)
/* 802A07FC  38 A0 00 00 */	li r5, 0
lbl_802A0800:
/* 802A0800  7F 83 E3 78 */	mr r3, r28
/* 802A0804  7F 44 D3 78 */	mr r4, r26
/* 802A0808  4B FF FC 7D */	bl newSe___8JAISeMgrFiUl
/* 802A080C  7C 79 1B 79 */	or. r25, r3, r3
/* 802A0810  40 82 00 20 */	bne lbl_802A0830
/* 802A0814  3C 60 80 3A */	lis r3, JAISeMgr__stringBase0@ha /* 0x8039B8F8@ha */
/* 802A0818  38 63 B8 F8 */	addi r3, r3, JAISeMgr__stringBase0@l /* 0x8039B8F8@l */
/* 802A081C  80 9D 00 00 */	lwz r4, 0(r29)
/* 802A0820  4C C6 31 82 */	crclr 6
/* 802A0824  4B FF 07 41 */	bl JASReport__FPCce
/* 802A0828  38 60 00 00 */	li r3, 0
/* 802A082C  48 00 00 8C */	b lbl_802A08B8
lbl_802A0830:
/* 802A0830  2C 1A 00 00 */	cmpwi r26, 0
/* 802A0834  41 80 00 24 */	blt lbl_802A0858
/* 802A0838  2C 1A 00 10 */	cmpwi r26, 0x10
/* 802A083C  40 80 00 1C */	bge lbl_802A0858
/* 802A0840  1C 1A 00 6C */	mulli r0, r26, 0x6c
/* 802A0844  7C 7C 02 14 */	add r3, r28, r0
/* 802A0848  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 802A084C  28 06 00 00 */	cmplwi r6, 0
/* 802A0850  41 82 00 08 */	beq lbl_802A0858
/* 802A0854  48 00 00 08 */	b lbl_802A085C
lbl_802A0858:
/* 802A0858  80 DC 00 08 */	lwz r6, 8(r28)
lbl_802A085C:
/* 802A085C  80 1D 00 00 */	lwz r0, 0(r29)
/* 802A0860  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A0864  7F 23 CB 78 */	mr r3, r25
/* 802A0868  38 81 00 0C */	addi r4, r1, 0xc
/* 802A086C  7F E5 FB 78 */	mr r5, r31
/* 802A0870  4B FF ED E1 */	bl func_8029F650
/* 802A0874  28 1B 00 00 */	cmplwi r27, 0
/* 802A0878  41 82 00 28 */	beq lbl_802A08A0
/* 802A087C  80 1D 00 00 */	lwz r0, 0(r29)
/* 802A0880  90 01 00 08 */	stw r0, 8(r1)
/* 802A0884  7F 63 DB 78 */	mr r3, r27
/* 802A0888  38 81 00 08 */	addi r4, r1, 8
/* 802A088C  7F 25 CB 78 */	mr r5, r25
/* 802A0890  81 9B 00 00 */	lwz r12, 0(r27)
/* 802A0894  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802A0898  7D 89 03 A6 */	mtctr r12
/* 802A089C  4E 80 04 21 */	bctrl 
lbl_802A08A0:
/* 802A08A0  28 1E 00 00 */	cmplwi r30, 0
/* 802A08A4  41 82 00 10 */	beq lbl_802A08B4
/* 802A08A8  38 79 00 10 */	addi r3, r25, 0x10
/* 802A08AC  7F C4 F3 78 */	mr r4, r30
/* 802A08B0  48 00 19 0D */	bl attachHandle__8JAISoundFP14JAISoundHandle
lbl_802A08B4:
/* 802A08B4  38 60 00 01 */	li r3, 1
lbl_802A08B8:
/* 802A08B8  39 61 00 40 */	addi r11, r1, 0x40
/* 802A08BC  48 0C 19 5D */	bl _restgpr_25
/* 802A08C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802A08C4  7C 08 03 A6 */	mtlr r0
/* 802A08C8  38 21 00 40 */	addi r1, r1, 0x40
/* 802A08CC  4E 80 00 20 */	blr 
