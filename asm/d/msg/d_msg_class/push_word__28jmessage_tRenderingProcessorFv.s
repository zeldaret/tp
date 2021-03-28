lbl_8022F734:
/* 8022F734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022F738  7C 08 02 A6 */	mflr r0
/* 8022F73C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022F740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022F744  7C 7F 1B 78 */	mr r31, r3
/* 8022F748  80 63 00 04 */	lwz r3, 4(r3)
/* 8022F74C  88 9F 01 4F */	lbz r4, 0x14f(r31)
/* 8022F750  7C 84 07 74 */	extsb r4, r4
/* 8022F754  4B FF 9F DD */	bl getWord__19jmessage_tReferenceFi
/* 8022F758  7C 64 1B 78 */	mr r4, r3
/* 8022F75C  7F E3 FB 78 */	mr r3, r31
/* 8022F760  48 07 84 99 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022F764  88 7F 01 4F */	lbz r3, 0x14f(r31)
/* 8022F768  38 03 00 01 */	addi r0, r3, 1
/* 8022F76C  98 1F 01 4F */	stb r0, 0x14f(r31)
/* 8022F770  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022F774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022F778  7C 08 03 A6 */	mtlr r0
/* 8022F77C  38 21 00 10 */	addi r1, r1, 0x10
/* 8022F780  4E 80 00 20 */	blr 
