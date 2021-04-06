lbl_8028D5B0:
/* 8028D5B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D5B4  7C 08 02 A6 */	mflr r0
/* 8028D5B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D5BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028D5C0  7C 66 1B 78 */	mr r6, r3
/* 8028D5C4  7C 9F 23 78 */	mr r31, r4
/* 8028D5C8  80 65 00 00 */	lwz r3, 0(r5)
/* 8028D5CC  80 83 00 04 */	lwz r4, 4(r3)
/* 8028D5D0  3C 60 4A 53 */	lis r3, 0x4A53 /* 0x4A534E44@ha */
/* 8028D5D4  38 03 4E 44 */	addi r0, r3, 0x4E44 /* 0x4A534E44@l */
/* 8028D5D8  7C 04 00 00 */	cmpw r4, r0
/* 8028D5DC  41 82 00 08 */	beq lbl_8028D5E4
/* 8028D5E0  48 00 00 10 */	b lbl_8028D5F0
lbl_8028D5E4:
/* 8028D5E4  3C 60 80 29 */	lis r3, createObject_JAI_SOUND___Q215JStudio_JAudio213TCreateObjectFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ215JStudio_JAudio213TCreateObject@ha /* 0x8028D624@ha */
/* 8028D5E8  39 83 D6 24 */	addi r12, r3, createObject_JAI_SOUND___Q215JStudio_JAudio213TCreateObjectFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ215JStudio_JAudio213TCreateObject@l /* 0x8028D624@l */
/* 8028D5EC  48 00 00 0C */	b lbl_8028D5F8
lbl_8028D5F0:
/* 8028D5F0  38 60 00 00 */	li r3, 0
/* 8028D5F4  48 00 00 1C */	b lbl_8028D610
lbl_8028D5F8:
/* 8028D5F8  7C A3 2B 78 */	mr r3, r5
/* 8028D5FC  7C C4 33 78 */	mr r4, r6
/* 8028D600  7D 89 03 A6 */	mtctr r12
/* 8028D604  4E 80 04 21 */	bctrl 
/* 8028D608  90 7F 00 00 */	stw r3, 0(r31)
/* 8028D60C  38 60 00 01 */	li r3, 1
lbl_8028D610:
/* 8028D610  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028D614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028D618  7C 08 03 A6 */	mtlr r0
/* 8028D61C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028D620  4E 80 00 20 */	blr 
