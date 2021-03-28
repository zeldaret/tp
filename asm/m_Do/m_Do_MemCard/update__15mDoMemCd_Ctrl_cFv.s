lbl_80016894:
/* 80016894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80016898  7C 08 02 A6 */	mflr r0
/* 8001689C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800168A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800168A4  7C 7F 1B 78 */	mr r31, r3
/* 800168A8  80 8D 86 F8 */	lwz r4, mResetData__6mDoRst(r13)
/* 800168AC  80 04 00 00 */	lwz r0, 0(r4)
/* 800168B0  2C 00 00 00 */	cmpwi r0, 0
/* 800168B4  41 82 00 30 */	beq lbl_800168E4
/* 800168B8  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 800168BC  48 32 87 85 */	bl OSLockMutex
/* 800168C0  38 00 00 05 */	li r0, 5
/* 800168C4  90 1F 1F C0 */	stw r0, 0x1fc0(r31)
/* 800168C8  38 00 00 03 */	li r0, 3
/* 800168CC  98 1F 1F BE */	stb r0, 0x1fbe(r31)
/* 800168D0  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 800168D4  48 32 88 49 */	bl OSUnlockMutex
/* 800168D8  38 7F 1F E4 */	addi r3, r31, 0x1fe4
/* 800168DC  48 32 8B 29 */	bl OSSignalCond
/* 800168E0  48 00 00 C0 */	b lbl_800169A0
lbl_800168E4:
/* 800168E4  38 80 00 00 */	li r4, 0
/* 800168E8  48 00 04 8D */	bl getStatus__15mDoMemCd_Ctrl_cFUl
/* 800168EC  28 03 00 0E */	cmplwi r3, 0xe
/* 800168F0  41 82 00 B0 */	beq lbl_800169A0
/* 800168F4  38 60 00 00 */	li r3, 0
/* 800168F8  48 34 01 1D */	bl CARDProbe
/* 800168FC  2C 03 00 00 */	cmpwi r3, 0
/* 80016900  41 82 00 4C */	beq lbl_8001694C
/* 80016904  7F E3 FB 78 */	mr r3, r31
/* 80016908  38 80 00 00 */	li r4, 0
/* 8001690C  48 00 04 69 */	bl getStatus__15mDoMemCd_Ctrl_cFUl
/* 80016910  28 03 00 00 */	cmplwi r3, 0
/* 80016914  40 82 00 38 */	bne lbl_8001694C
/* 80016918  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 8001691C  48 32 87 25 */	bl OSLockMutex
/* 80016920  38 00 00 00 */	li r0, 0
/* 80016924  98 1F 1F BE */	stb r0, 0x1fbe(r31)
/* 80016928  38 00 00 0D */	li r0, 0xd
/* 8001692C  90 1F 1F C4 */	stw r0, 0x1fc4(r31)
/* 80016930  38 00 00 04 */	li r0, 4
/* 80016934  90 1F 1F C0 */	stw r0, 0x1fc0(r31)
/* 80016938  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 8001693C  48 32 87 E1 */	bl OSUnlockMutex
/* 80016940  38 7F 1F E4 */	addi r3, r31, 0x1fe4
/* 80016944  48 32 8A C1 */	bl OSSignalCond
/* 80016948  48 00 00 58 */	b lbl_800169A0
lbl_8001694C:
/* 8001694C  38 60 00 00 */	li r3, 0
/* 80016950  48 34 00 C5 */	bl CARDProbe
/* 80016954  2C 03 00 00 */	cmpwi r3, 0
/* 80016958  40 82 00 48 */	bne lbl_800169A0
/* 8001695C  7F E3 FB 78 */	mr r3, r31
/* 80016960  38 80 00 00 */	li r4, 0
/* 80016964  48 00 04 11 */	bl getStatus__15mDoMemCd_Ctrl_cFUl
/* 80016968  28 03 00 00 */	cmplwi r3, 0
/* 8001696C  41 82 00 34 */	beq lbl_800169A0
/* 80016970  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 80016974  48 32 86 CD */	bl OSLockMutex
/* 80016978  38 00 00 01 */	li r0, 1
/* 8001697C  98 1F 1F BE */	stb r0, 0x1fbe(r31)
/* 80016980  38 00 00 0D */	li r0, 0xd
/* 80016984  90 1F 1F C4 */	stw r0, 0x1fc4(r31)
/* 80016988  38 00 00 05 */	li r0, 5
/* 8001698C  90 1F 1F C0 */	stw r0, 0x1fc0(r31)
/* 80016990  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 80016994  48 32 87 89 */	bl OSUnlockMutex
/* 80016998  38 7F 1F E4 */	addi r3, r31, 0x1fe4
/* 8001699C  48 32 8A 69 */	bl OSSignalCond
lbl_800169A0:
/* 800169A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800169A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800169A8  7C 08 03 A6 */	mtlr r0
/* 800169AC  38 21 00 10 */	addi r1, r1, 0x10
/* 800169B0  4E 80 00 20 */	blr 
