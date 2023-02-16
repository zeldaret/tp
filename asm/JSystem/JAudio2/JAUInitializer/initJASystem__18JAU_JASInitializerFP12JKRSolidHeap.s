lbl_802A4B28:
/* 802A4B28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A4B2C  7C 08 02 A6 */	mflr r0
/* 802A4B30  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A4B34  39 61 00 20 */	addi r11, r1, 0x20
/* 802A4B38  48 0B D6 A5 */	bl _savegpr_29
/* 802A4B3C  7C 7F 1B 78 */	mr r31, r3
/* 802A4B40  7C 9D 23 78 */	mr r29, r4
/* 802A4B44  80 0D 86 0C */	lwz r0, __OSReport_disable-0xC(r13)
/* 802A4B48  28 00 00 00 */	cmplwi r0, 0
/* 802A4B4C  40 82 01 98 */	bne lbl_802A4CE4
/* 802A4B50  4B FE B3 AD */	bl getThreadPointer__6JASDvdFv
/* 802A4B54  28 03 00 00 */	cmplwi r3, 0
/* 802A4B58  40 82 01 8C */	bne lbl_802A4CE4
/* 802A4B5C  7F A3 EB 78 */	mr r3, r29
/* 802A4B60  80 9F 00 08 */	lwz r4, 8(r31)
/* 802A4B64  4B FE BE 55 */	bl setupRootHeap__9JASKernelFP12JKRSolidHeapUl
/* 802A4B68  80 1F 00 00 */	lwz r0, 0(r31)
/* 802A4B6C  28 00 00 00 */	cmplwi r0, 0
/* 802A4B70  40 82 00 10 */	bne lbl_802A4B80
/* 802A4B74  80 6D 8E 48 */	lwz r3, sAramObject__7JKRAram(r13)
/* 802A4B78  80 03 00 7C */	lwz r0, 0x7c(r3)
/* 802A4B7C  90 1F 00 00 */	stw r0, 0(r31)
lbl_802A4B80:
/* 802A4B80  80 1F 00 04 */	lwz r0, 4(r31)
/* 802A4B84  28 00 00 00 */	cmplwi r0, 0
/* 802A4B88  40 82 00 10 */	bne lbl_802A4B98
/* 802A4B8C  80 6D 8E 48 */	lwz r3, sAramObject__7JKRAram(r13)
/* 802A4B90  80 03 00 80 */	lwz r0, 0x80(r3)
/* 802A4B94  90 1F 00 04 */	stw r0, 4(r31)
lbl_802A4B98:
/* 802A4B98  80 7F 00 00 */	lwz r3, 0(r31)
/* 802A4B9C  80 9F 00 04 */	lwz r4, 4(r31)
/* 802A4BA0  4B FE BF 31 */	bl setupAramHeap__9JASKernelFUlUl
/* 802A4BA4  83 DF 00 1C */	lwz r30, 0x1c(r31)
/* 802A4BA8  88 0D 8C B1 */	lbz r0, struct_80451230+0x1(r13)
/* 802A4BAC  7C 00 07 75 */	extsb. r0, r0
/* 802A4BB0  40 82 00 34 */	bne lbl_802A4BE4
/* 802A4BB4  3C 60 80 43 */	lis r3, data_80431B04@ha /* 0x80431B04@ha */
/* 802A4BB8  38 63 1B 04 */	addi r3, r3, data_80431B04@l /* 0x80431B04@l */
/* 802A4BBC  4B FE BC 8D */	bl __ct__17JASGenericMemPoolFv
/* 802A4BC0  3C 60 80 43 */	lis r3, data_80431B04@ha /* 0x80431B04@ha */
/* 802A4BC4  38 63 1B 04 */	addi r3, r3, data_80431B04@l /* 0x80431B04@l */
/* 802A4BC8  3C 80 80 29 */	lis r4, func_802932E0@ha /* 0x802932E0@ha */
/* 802A4BCC  38 84 32 E0 */	addi r4, r4, func_802932E0@l /* 0x802932E0@l */
/* 802A4BD0  3C A0 80 43 */	lis r5, lit_757@ha /* 0x80434110@ha */
/* 802A4BD4  38 A5 41 10 */	addi r5, r5, lit_757@l /* 0x80434110@l */
/* 802A4BD8  48 0B D0 4D */	bl __register_global_object
/* 802A4BDC  38 00 00 01 */	li r0, 1
/* 802A4BE0  98 0D 8C B1 */	stb r0, struct_80451230+0x1(r13)
lbl_802A4BE4:
/* 802A4BE4  48 09 8B 11 */	bl OSDisableInterrupts
/* 802A4BE8  90 61 00 0C */	stw r3, 0xc(r1)
/* 802A4BEC  3C 60 80 43 */	lis r3, data_80431B04@ha /* 0x80431B04@ha */
/* 802A4BF0  38 63 1B 04 */	addi r3, r3, data_80431B04@l /* 0x80431B04@l */
/* 802A4BF4  38 80 02 48 */	li r4, 0x248
/* 802A4BF8  7F C5 F3 78 */	mr r5, r30
/* 802A4BFC  4B FE BC CD */	bl newMemPool__17JASGenericMemPoolFUli
/* 802A4C00  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802A4C04  48 09 8B 19 */	bl OSRestoreInterrupts
/* 802A4C08  83 DF 00 20 */	lwz r30, 0x20(r31)
/* 802A4C0C  2C 1E 00 00 */	cmpwi r30, 0
/* 802A4C10  40 81 00 64 */	ble lbl_802A4C74
/* 802A4C14  88 0D 8C B0 */	lbz r0, struct_80451230+0x0(r13)
/* 802A4C18  7C 00 07 75 */	extsb. r0, r0
/* 802A4C1C  40 82 00 34 */	bne lbl_802A4C50
/* 802A4C20  3C 60 80 43 */	lis r3, data_80431AF4@ha /* 0x80431AF4@ha */
/* 802A4C24  38 63 1A F4 */	addi r3, r3, data_80431AF4@l /* 0x80431AF4@l */
/* 802A4C28  4B FE BC 21 */	bl __ct__17JASGenericMemPoolFv
/* 802A4C2C  3C 60 80 43 */	lis r3, data_80431AF4@ha /* 0x80431AF4@ha */
/* 802A4C30  38 63 1A F4 */	addi r3, r3, data_80431AF4@l /* 0x80431AF4@l */
/* 802A4C34  3C 80 80 29 */	lis r4, func_80293334@ha /* 0x80293334@ha */
/* 802A4C38  38 84 33 34 */	addi r4, r4, func_80293334@l /* 0x80293334@l */
/* 802A4C3C  3C A0 80 43 */	lis r5, lit_763@ha /* 0x8043411C@ha */
/* 802A4C40  38 A5 41 1C */	addi r5, r5, lit_763@l /* 0x8043411C@l */
/* 802A4C44  48 0B CF E1 */	bl __register_global_object
/* 802A4C48  38 00 00 01 */	li r0, 1
/* 802A4C4C  98 0D 8C B0 */	stb r0, struct_80451230+0x0(r13)
lbl_802A4C50:
/* 802A4C50  48 09 8A A5 */	bl OSDisableInterrupts
/* 802A4C54  90 61 00 08 */	stw r3, 8(r1)
/* 802A4C58  3C 60 80 43 */	lis r3, data_80431AF4@ha /* 0x80431AF4@ha */
/* 802A4C5C  38 63 1A F4 */	addi r3, r3, data_80431AF4@l /* 0x80431AF4@l */
/* 802A4C60  38 80 00 50 */	li r4, 0x50
/* 802A4C64  7F C5 F3 78 */	mr r5, r30
/* 802A4C68  4B FE BC 61 */	bl newMemPool__17JASGenericMemPoolFUli
/* 802A4C6C  80 61 00 08 */	lwz r3, 8(r1)
/* 802A4C70  48 09 8A AD */	bl OSRestoreInterrupts
lbl_802A4C74:
/* 802A4C74  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802A4C78  38 80 00 80 */	li r4, 0x80
/* 802A4C7C  38 A0 10 00 */	li r5, 0x1000
/* 802A4C80  4B FE B2 85 */	bl createThread__6JASDvdFliUl
/* 802A4C84  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802A4C88  4B FF 80 C5 */	bl create__14JASAudioThreadFl
/* 802A4C8C  83 CD 8E 30 */	lwz r30, sManager__15JKRThreadSwitch(r13)
/* 802A4C90  28 1E 00 00 */	cmplwi r30, 0
/* 802A4C94  41 82 00 3C */	beq lbl_802A4CD0
/* 802A4C98  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 802A4C9C  2C 1D 00 00 */	cmpwi r29, 0
/* 802A4CA0  41 80 00 18 */	blt lbl_802A4CB8
/* 802A4CA4  4B FE B2 59 */	bl getThreadPointer__6JASDvdFv
/* 802A4CA8  7C 64 1B 78 */	mr r4, r3
/* 802A4CAC  7F C3 F3 78 */	mr r3, r30
/* 802A4CB0  7F A5 EB 78 */	mr r5, r29
/* 802A4CB4  48 02 CD BD */	bl enter__15JKRThreadSwitchFP9JKRThreadi
lbl_802A4CB8:
/* 802A4CB8  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 802A4CBC  2C 05 00 00 */	cmpwi r5, 0
/* 802A4CC0  41 80 00 10 */	blt lbl_802A4CD0
/* 802A4CC4  7F C3 F3 78 */	mr r3, r30
/* 802A4CC8  80 8D 86 0C */	lwz r4, __OSReport_disable-0xC(r13)
/* 802A4CCC  48 02 CD A5 */	bl enter__15JKRThreadSwitchFP9JKRThreadi
lbl_802A4CD0:
/* 802A4CD0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 802A4CD4  4B FF 94 5D */	bl setDSPLevel__9JASDriverFf
/* 802A4CD8  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802A4CDC  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 802A4CE0  4B FF 16 3D */	bl initSystem__13JASAramStreamFUlUl
lbl_802A4CE4:
/* 802A4CE4  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802A4CE8  28 03 00 00 */	cmplwi r3, 0
/* 802A4CEC  41 82 00 08 */	beq lbl_802A4CF4
/* 802A4CF0  4B FF 53 E1 */	bl setCurrentDir__16JASWaveArcLoaderFPCc
lbl_802A4CF4:
/* 802A4CF4  48 09 B8 9D */	bl OSGetSoundMode
/* 802A4CF8  2C 03 00 01 */	cmpwi r3, 1
/* 802A4CFC  41 82 00 20 */	beq lbl_802A4D1C
/* 802A4D00  40 80 00 24 */	bge lbl_802A4D24
/* 802A4D04  2C 03 00 00 */	cmpwi r3, 0
/* 802A4D08  40 80 00 08 */	bge lbl_802A4D10
/* 802A4D0C  48 00 00 18 */	b lbl_802A4D24
lbl_802A4D10:
/* 802A4D10  38 60 00 00 */	li r3, 0
/* 802A4D14  4B FF 94 65 */	bl setOutputMode__9JASDriverFUl
/* 802A4D18  48 00 00 0C */	b lbl_802A4D24
lbl_802A4D1C:
/* 802A4D1C  38 60 00 01 */	li r3, 1
/* 802A4D20  4B FF 94 59 */	bl setOutputMode__9JASDriverFUl
lbl_802A4D24:
/* 802A4D24  39 61 00 20 */	addi r11, r1, 0x20
/* 802A4D28  48 0B D5 01 */	bl _restgpr_29
/* 802A4D2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A4D30  7C 08 03 A6 */	mtlr r0
/* 802A4D34  38 21 00 20 */	addi r1, r1, 0x20
/* 802A4D38  4E 80 00 20 */	blr 
