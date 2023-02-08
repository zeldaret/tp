lbl_8028F724:
/* 8028F724  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8028F728  7C 08 02 A6 */	mflr r0
/* 8028F72C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8028F730  39 61 00 30 */	addi r11, r1, 0x30
/* 8028F734  48 0D 2A A1 */	bl _savegpr_27
/* 8028F738  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028F73C  7C 9F 23 78 */	mr r31, r4
/* 8028F740  41 82 00 F4 */	beq lbl_8028F834
/* 8028F744  3C 60 80 3C */	lis r3, __vt__13JASTaskThread@ha /* 0x803C5B58@ha */
/* 8028F748  38 03 5B 58 */	addi r0, r3, __vt__13JASTaskThread@l /* 0x803C5B58@l */
/* 8028F74C  90 1E 00 00 */	stw r0, 0(r30)
lbl_8028F750:
/* 8028F750  38 7E 00 30 */	addi r3, r30, 0x30
/* 8028F754  38 81 00 0C */	addi r4, r1, 0xc
/* 8028F758  38 A0 00 00 */	li r5, 0
/* 8028F75C  48 0A F3 61 */	bl OSReceiveMessage
/* 8028F760  34 01 00 10 */	addic. r0, r1, 0x10
/* 8028F764  41 82 00 08 */	beq lbl_8028F76C
/* 8028F768  90 61 00 10 */	stw r3, 0x10(r1)
lbl_8028F76C:
/* 8028F76C  83 81 00 0C */	lwz r28, 0xc(r1)
/* 8028F770  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8028F774  2C 00 00 00 */	cmpwi r0, 0
/* 8028F778  41 82 00 A0 */	beq lbl_8028F818
/* 8028F77C  48 00 13 4D */	bl getCommandHeap__9JASKernelFv
/* 8028F780  7C 7D 1B 78 */	mr r29, r3
/* 8028F784  93 A1 00 08 */	stw r29, 8(r1)
/* 8028F788  48 0A F8 B9 */	bl OSLockMutex
/* 8028F78C  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8028F790  3B 60 00 00 */	li r27, 0
/* 8028F794  48 00 00 70 */	b lbl_8028F804
lbl_8028F798:
/* 8028F798  38 80 00 00 */	li r4, 0
/* 8028F79C  38 03 00 0C */	addi r0, r3, 0xc
/* 8028F7A0  7C 00 E0 40 */	cmplw r0, r28
/* 8028F7A4  41 81 00 14 */	bgt lbl_8028F7B8
/* 8028F7A8  38 03 04 0C */	addi r0, r3, 0x40c
/* 8028F7AC  7C 1C 00 40 */	cmplw r28, r0
/* 8028F7B0  40 80 00 08 */	bge lbl_8028F7B8
/* 8028F7B4  38 80 00 01 */	li r4, 1
lbl_8028F7B8:
/* 8028F7B8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8028F7BC  41 82 00 40 */	beq lbl_8028F7FC
/* 8028F7C0  80 83 00 08 */	lwz r4, 8(r3)
/* 8028F7C4  38 04 FF FF */	addi r0, r4, -1
/* 8028F7C8  90 03 00 08 */	stw r0, 8(r3)
/* 8028F7CC  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8028F7D0  7C 03 00 40 */	cmplw r3, r0
/* 8028F7D4  41 82 00 1C */	beq lbl_8028F7F0
/* 8028F7D8  80 03 00 08 */	lwz r0, 8(r3)
/* 8028F7DC  28 00 00 00 */	cmplwi r0, 0
/* 8028F7E0  40 82 00 10 */	bne lbl_8028F7F0
/* 8028F7E4  83 83 00 00 */	lwz r28, 0(r3)
/* 8028F7E8  48 03 F5 55 */	bl __dl__FPv
/* 8028F7EC  93 9B 00 00 */	stw r28, 0(r27)
lbl_8028F7F0:
/* 8028F7F0  80 61 00 08 */	lwz r3, 8(r1)
/* 8028F7F4  48 0A F9 29 */	bl OSUnlockMutex
/* 8028F7F8  4B FF FF 58 */	b lbl_8028F750
lbl_8028F7FC:
/* 8028F7FC  7C 7B 1B 78 */	mr r27, r3
/* 8028F800  80 63 00 00 */	lwz r3, 0(r3)
lbl_8028F804:
/* 8028F804  28 03 00 00 */	cmplwi r3, 0
/* 8028F808  40 82 FF 90 */	bne lbl_8028F798
/* 8028F80C  80 61 00 08 */	lwz r3, 8(r1)
/* 8028F810  48 0A F9 0D */	bl OSUnlockMutex
/* 8028F814  4B FF FF 3C */	b lbl_8028F750
lbl_8028F818:
/* 8028F818  7F C3 F3 78 */	mr r3, r30
/* 8028F81C  38 80 00 00 */	li r4, 0
/* 8028F820  48 04 1F 39 */	bl __dt__9JKRThreadFv
/* 8028F824  7F E0 07 35 */	extsh. r0, r31
/* 8028F828  40 81 00 0C */	ble lbl_8028F834
/* 8028F82C  7F C3 F3 78 */	mr r3, r30
/* 8028F830  48 03 F5 0D */	bl __dl__FPv
lbl_8028F834:
/* 8028F834  7F C3 F3 78 */	mr r3, r30
/* 8028F838  39 61 00 30 */	addi r11, r1, 0x30
/* 8028F83C  48 0D 29 E5 */	bl _restgpr_27
/* 8028F840  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8028F844  7C 08 03 A6 */	mtlr r0
/* 8028F848  38 21 00 30 */	addi r1, r1, 0x30
/* 8028F84C  4E 80 00 20 */	blr 
