lbl_801225E8:
/* 801225E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801225EC  7C 08 02 A6 */	mflr r0
/* 801225F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801225F4  39 61 00 20 */	addi r11, r1, 0x20
/* 801225F8  48 23 FB E5 */	bl _savegpr_29
/* 801225FC  7C 7D 1B 78 */	mr r29, r3
/* 80122600  7C 9E 23 78 */	mr r30, r4
/* 80122604  7C BF 2B 78 */	mr r31, r5
/* 80122608  7F E4 FB 78 */	mr r4, r31
/* 8012260C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008614@ha */
/* 80122610  38 A5 86 14 */	addi r5, r5, 0x8614 /* 0x00008614@l */
/* 80122614  7F C6 F3 78 */	mr r6, r30
/* 80122618  38 E0 00 00 */	li r7, 0
/* 8012261C  4B FF DF 65 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80122620  7F A3 EB 78 */	mr r3, r29
/* 80122624  38 9F 00 04 */	addi r4, r31, 4
/* 80122628  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008615@ha */
/* 8012262C  38 A5 86 15 */	addi r5, r5, 0x8615 /* 0x00008615@l */
/* 80122630  7F C6 F3 78 */	mr r6, r30
/* 80122634  38 E0 00 00 */	li r7, 0
/* 80122638  4B FF DF 49 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 8012263C  39 61 00 20 */	addi r11, r1, 0x20
/* 80122640  48 23 FB E9 */	bl _restgpr_29
/* 80122644  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80122648  7C 08 03 A6 */	mtlr r0
/* 8012264C  38 21 00 20 */	addi r1, r1, 0x20
/* 80122650  4E 80 00 20 */	blr 
