lbl_800107D0:
/* 800107D0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800107D4  7C 08 02 A6 */	mflr r0
/* 800107D8  90 01 00 54 */	stw r0, 0x54(r1)
/* 800107DC  DB E1 00 48 */	stfd f31, 0x48(r1)
/* 800107E0  39 61 00 48 */	addi r11, r1, 0x48
/* 800107E4  48 35 19 D9 */	bl _savegpr_21
/* 800107E8  7C 75 1B 78 */	mr r21, r3
/* 800107EC  7C 96 23 78 */	mr r22, r4
/* 800107F0  7C B7 2B 78 */	mr r23, r5
/* 800107F4  7C D8 33 78 */	mr r24, r6
/* 800107F8  7C F9 3B 78 */	mr r25, r7
/* 800107FC  7D 1A 43 78 */	mr r26, r8
/* 80010800  FF E0 08 90 */	fmr f31, f1
/* 80010804  7D 3B 4B 78 */	mr r27, r9
/* 80010808  7D 5C 53 78 */	mr r28, r10
/* 8001080C  83 A1 00 58 */	lwz r29, 0x58(r1)
/* 80010810  83 C1 00 5C */	lwz r30, 0x5c(r1)
/* 80010814  83 E1 00 60 */	lwz r31, 0x60(r1)
/* 80010818  4B FF F1 39 */	bl __ct__13mDoExt_morf_cFv
/* 8001081C  3C 60 80 3A */	lis r3, __vt__16mDoExt_McaMorfSO@ha
/* 80010820  38 03 32 B0 */	addi r0, r3, __vt__16mDoExt_McaMorfSO@l
/* 80010824  90 15 00 00 */	stw r0, 0(r21)
/* 80010828  38 00 00 00 */	li r0, 0
/* 8001082C  98 15 00 54 */	stb r0, 0x54(r21)
/* 80010830  98 15 00 55 */	stb r0, 0x55(r21)
/* 80010834  93 A1 00 08 */	stw r29, 8(r1)
/* 80010838  93 C1 00 0C */	stw r30, 0xc(r1)
/* 8001083C  93 E1 00 10 */	stw r31, 0x10(r1)
/* 80010840  7E A3 AB 78 */	mr r3, r21
/* 80010844  7E C4 B3 78 */	mr r4, r22
/* 80010848  7E E5 BB 78 */	mr r5, r23
/* 8001084C  7F 06 C3 78 */	mr r6, r24
/* 80010850  7F 27 CB 78 */	mr r7, r25
/* 80010854  7F 48 D3 78 */	mr r8, r26
/* 80010858  FC 20 F8 90 */	fmr f1, f31
/* 8001085C  7F 69 DB 78 */	mr r9, r27
/* 80010860  7F 8A E3 78 */	mr r10, r28
/* 80010864  48 00 00 8D */	bl create__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80010868  7E A3 AB 78 */	mr r3, r21
/* 8001086C  CB E1 00 48 */	lfd f31, 0x48(r1)
/* 80010870  39 61 00 48 */	addi r11, r1, 0x48
/* 80010874  48 35 19 95 */	bl _restgpr_21
/* 80010878  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8001087C  7C 08 03 A6 */	mtlr r0
/* 80010880  38 21 00 50 */	addi r1, r1, 0x50
/* 80010884  4E 80 00 20 */	blr 
