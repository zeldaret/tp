lbl_800840E4:
/* 800840E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800840E8  7C 08 02 A6 */	mflr r0
/* 800840EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800840F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800840F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 800840F8  41 82 01 58 */	beq lbl_80084250
/* 800840FC  3C 60 80 3B */	lis r3, __vt__12dCcD_GObjInf@ha /* 0x803AC200@ha */
/* 80084100  38 03 C2 00 */	addi r0, r3, __vt__12dCcD_GObjInf@l /* 0x803AC200@l */
/* 80084104  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80084108  34 1F 00 E8 */	addic. r0, r31, 0xe8
/* 8008410C  41 82 00 24 */	beq lbl_80084130
/* 80084110  3C 60 80 3B */	lis r3, __vt__11dCcD_GObjCo@ha /* 0x803AC22C@ha */
/* 80084114  38 03 C2 2C */	addi r0, r3, __vt__11dCcD_GObjCo@l /* 0x803AC22C@l */
/* 80084118  90 1F 01 00 */	stw r0, 0x100(r31)
/* 8008411C  34 1F 00 E8 */	addic. r0, r31, 0xe8
/* 80084120  41 82 00 10 */	beq lbl_80084130
/* 80084124  3C 60 80 3B */	lis r3, __vt__22dCcD_GAtTgCoCommonBase@ha /* 0x803AC250@ha */
/* 80084128  38 03 C2 50 */	addi r0, r3, __vt__22dCcD_GAtTgCoCommonBase@l /* 0x803AC250@l */
/* 8008412C  90 1F 01 00 */	stw r0, 0x100(r31)
lbl_80084130:
/* 80084130  34 1F 00 9C */	addic. r0, r31, 0x9c
/* 80084134  41 82 00 24 */	beq lbl_80084158
/* 80084138  3C 60 80 3B */	lis r3, __vt__11dCcD_GObjTg@ha /* 0x803AC238@ha */
/* 8008413C  38 03 C2 38 */	addi r0, r3, __vt__11dCcD_GObjTg@l /* 0x803AC238@l */
/* 80084140  90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 80084144  34 1F 00 9C */	addic. r0, r31, 0x9c
/* 80084148  41 82 00 10 */	beq lbl_80084158
/* 8008414C  3C 60 80 3B */	lis r3, __vt__22dCcD_GAtTgCoCommonBase@ha /* 0x803AC250@ha */
/* 80084150  38 03 C2 50 */	addi r0, r3, __vt__22dCcD_GAtTgCoCommonBase@l /* 0x803AC250@l */
/* 80084154  90 1F 00 B4 */	stw r0, 0xb4(r31)
lbl_80084158:
/* 80084158  34 1F 00 58 */	addic. r0, r31, 0x58
/* 8008415C  41 82 00 24 */	beq lbl_80084180
/* 80084160  3C 60 80 3B */	lis r3, __vt__11dCcD_GObjAt@ha /* 0x803AC244@ha */
/* 80084164  38 03 C2 44 */	addi r0, r3, __vt__11dCcD_GObjAt@l /* 0x803AC244@l */
/* 80084168  90 1F 00 70 */	stw r0, 0x70(r31)
/* 8008416C  34 1F 00 58 */	addic. r0, r31, 0x58
/* 80084170  41 82 00 10 */	beq lbl_80084180
/* 80084174  3C 60 80 3B */	lis r3, __vt__22dCcD_GAtTgCoCommonBase@ha /* 0x803AC250@ha */
/* 80084178  38 03 C2 50 */	addi r0, r3, __vt__22dCcD_GAtTgCoCommonBase@l /* 0x803AC250@l */
/* 8008417C  90 1F 00 70 */	stw r0, 0x70(r31)
lbl_80084180:
/* 80084180  28 1F 00 00 */	cmplwi r31, 0
/* 80084184  41 82 00 BC */	beq lbl_80084240
/* 80084188  3C 60 80 3B */	lis r3, __vt__12cCcD_GObjInf@ha /* 0x803AC25C@ha */
/* 8008418C  38 03 C2 5C */	addi r0, r3, __vt__12cCcD_GObjInf@l /* 0x803AC25C@l */
/* 80084190  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80084194  41 82 00 AC */	beq lbl_80084240
/* 80084198  3C 60 80 3B */	lis r3, __vt__8cCcD_Obj@ha /* 0x803AC288@ha */
/* 8008419C  38 03 C2 88 */	addi r0, r3, __vt__8cCcD_Obj@l /* 0x803AC288@l */
/* 800841A0  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 800841A4  34 1F 00 48 */	addic. r0, r31, 0x48
/* 800841A8  41 82 00 10 */	beq lbl_800841B8
/* 800841AC  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideInfo@ha /* 0x803A7224@ha */
/* 800841B0  38 03 72 24 */	addi r0, r3, __vt__15cCcD_DivideInfo@l /* 0x803A7224@l */
/* 800841B4  90 1F 00 54 */	stw r0, 0x54(r31)
lbl_800841B8:
/* 800841B8  28 1F 00 00 */	cmplwi r31, 0
/* 800841BC  41 82 00 84 */	beq lbl_80084240
/* 800841C0  3C 60 80 3B */	lis r3, __vt__14cCcD_ObjHitInf@ha /* 0x803AC2D8@ha */
/* 800841C4  38 03 C2 D8 */	addi r0, r3, __vt__14cCcD_ObjHitInf@l /* 0x803AC2D8@l */
/* 800841C8  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 800841CC  34 1F 00 2C */	addic. r0, r31, 0x2c
/* 800841D0  41 82 00 24 */	beq lbl_800841F4
/* 800841D4  3C 60 80 3B */	lis r3, __vt__10cCcD_ObjCo@ha /* 0x803AC2A8@ha */
/* 800841D8  38 03 C2 A8 */	addi r0, r3, __vt__10cCcD_ObjCo@l /* 0x803AC2A8@l */
/* 800841DC  90 1F 00 38 */	stw r0, 0x38(r31)
/* 800841E0  34 1F 00 2C */	addic. r0, r31, 0x2c
/* 800841E4  41 82 00 10 */	beq lbl_800841F4
/* 800841E8  3C 60 80 3B */	lis r3, __vt__18cCcD_ObjCommonBase@ha /* 0x803AC2CC@ha */
/* 800841EC  38 03 C2 CC */	addi r0, r3, __vt__18cCcD_ObjCommonBase@l /* 0x803AC2CC@l */
/* 800841F0  90 1F 00 38 */	stw r0, 0x38(r31)
lbl_800841F4:
/* 800841F4  34 1F 00 18 */	addic. r0, r31, 0x18
/* 800841F8  41 82 00 24 */	beq lbl_8008421C
/* 800841FC  3C 60 80 3B */	lis r3, __vt__10cCcD_ObjTg@ha /* 0x803AC2B4@ha */
/* 80084200  38 03 C2 B4 */	addi r0, r3, __vt__10cCcD_ObjTg@l /* 0x803AC2B4@l */
/* 80084204  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80084208  34 1F 00 18 */	addic. r0, r31, 0x18
/* 8008420C  41 82 00 10 */	beq lbl_8008421C
/* 80084210  3C 60 80 3B */	lis r3, __vt__18cCcD_ObjCommonBase@ha /* 0x803AC2CC@ha */
/* 80084214  38 03 C2 CC */	addi r0, r3, __vt__18cCcD_ObjCommonBase@l /* 0x803AC2CC@l */
/* 80084218  90 1F 00 24 */	stw r0, 0x24(r31)
lbl_8008421C:
/* 8008421C  28 1F 00 00 */	cmplwi r31, 0
/* 80084220  41 82 00 20 */	beq lbl_80084240
/* 80084224  3C 60 80 3B */	lis r3, __vt__10cCcD_ObjAt@ha /* 0x803AC2C0@ha */
/* 80084228  38 03 C2 C0 */	addi r0, r3, __vt__10cCcD_ObjAt@l /* 0x803AC2C0@l */
/* 8008422C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80084230  41 82 00 10 */	beq lbl_80084240
/* 80084234  3C 60 80 3B */	lis r3, __vt__18cCcD_ObjCommonBase@ha /* 0x803AC2CC@ha */
/* 80084238  38 03 C2 CC */	addi r0, r3, __vt__18cCcD_ObjCommonBase@l /* 0x803AC2CC@l */
/* 8008423C  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80084240:
/* 80084240  7C 80 07 35 */	extsh. r0, r4
/* 80084244  40 81 00 0C */	ble lbl_80084250
/* 80084248  7F E3 FB 78 */	mr r3, r31
/* 8008424C  48 24 AA F1 */	bl __dl__FPv
lbl_80084250:
/* 80084250  7F E3 FB 78 */	mr r3, r31
/* 80084254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80084258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8008425C  7C 08 03 A6 */	mtlr r0
/* 80084260  38 21 00 10 */	addi r1, r1, 0x10
/* 80084264  4E 80 00 20 */	blr 
