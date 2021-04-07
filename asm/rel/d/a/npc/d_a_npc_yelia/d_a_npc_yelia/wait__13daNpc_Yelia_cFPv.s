lbl_80B50084:
/* 80B50084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B50088  7C 08 02 A6 */	mflr r0
/* 80B5008C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B50090  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B50094  93 C1 00 08 */	stw r30, 8(r1)
/* 80B50098  7C 7F 1B 78 */	mr r31, r3
/* 80B5009C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B500A0  2C 00 00 02 */	cmpwi r0, 2
/* 80B500A4  41 82 03 90 */	beq lbl_80B50434
/* 80B500A8  40 80 07 48 */	bge lbl_80B507F0
/* 80B500AC  2C 00 00 00 */	cmpwi r0, 0
/* 80B500B0  40 80 00 0C */	bge lbl_80B500BC
/* 80B500B4  48 00 07 3C */	b lbl_80B507F0
/* 80B500B8  48 00 07 38 */	b lbl_80B507F0
lbl_80B500BC:
/* 80B500BC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B500C0  2C 00 00 00 */	cmpwi r0, 0
/* 80B500C4  40 82 03 70 */	bne lbl_80B50434
/* 80B500C8  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B500CC  2C 00 00 05 */	cmpwi r0, 5
/* 80B500D0  41 82 01 D0 */	beq lbl_80B502A0
/* 80B500D4  40 80 00 1C */	bge lbl_80B500F0
/* 80B500D8  2C 00 00 03 */	cmpwi r0, 3
/* 80B500DC  41 82 00 88 */	beq lbl_80B50164
/* 80B500E0  40 80 01 5C */	bge lbl_80B5023C
/* 80B500E4  2C 00 00 00 */	cmpwi r0, 0
/* 80B500E8  40 80 00 18 */	bge lbl_80B50100
/* 80B500EC  48 00 02 E0 */	b lbl_80B503CC
lbl_80B500F0:
/* 80B500F0  2C 00 00 07 */	cmpwi r0, 7
/* 80B500F4  41 82 02 74 */	beq lbl_80B50368
/* 80B500F8  40 80 02 D4 */	bge lbl_80B503CC
/* 80B500FC  48 00 02 08 */	b lbl_80B50304
lbl_80B50100:
/* 80B50100  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B50104  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B50108  41 82 00 28 */	beq lbl_80B50130
/* 80B5010C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B50110  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B50114  4B 5F 57 85 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B50118  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B5011C  38 00 00 1A */	li r0, 0x1a
/* 80B50120  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B50124  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B50128  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B5012C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B50130:
/* 80B50130  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B50134  2C 00 00 00 */	cmpwi r0, 0
/* 80B50138  41 82 02 F4 */	beq lbl_80B5042C
/* 80B5013C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B50140  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B50144  4B 5F 57 55 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B50148  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B5014C  38 00 00 00 */	li r0, 0
/* 80B50150  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B50154  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B50158  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B5015C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B50160  48 00 02 CC */	b lbl_80B5042C
lbl_80B50164:
/* 80B50164  38 60 01 1F */	li r3, 0x11f
/* 80B50168  4B 5F C9 45 */	bl daNpcT_chkEvtBit__FUl
/* 80B5016C  2C 03 00 00 */	cmpwi r3, 0
/* 80B50170  41 82 00 68 */	beq lbl_80B501D8
/* 80B50174  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B50178  2C 00 00 13 */	cmpwi r0, 0x13
/* 80B5017C  41 82 00 28 */	beq lbl_80B501A4
/* 80B50180  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B50184  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B50188  4B 5F 57 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5018C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B50190  38 00 00 13 */	li r0, 0x13
/* 80B50194  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B50198  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B5019C  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B501A0  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B501A4:
/* 80B501A4  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B501A8  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B501AC  41 82 02 80 */	beq lbl_80B5042C
/* 80B501B0  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B501B4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B501B8  4B 5F 56 E1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B501BC  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B501C0  38 00 00 11 */	li r0, 0x11
/* 80B501C4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B501C8  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B501CC  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B501D0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B501D4  48 00 02 58 */	b lbl_80B5042C
lbl_80B501D8:
/* 80B501D8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B501DC  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B501E0  41 82 00 28 */	beq lbl_80B50208
/* 80B501E4  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B501E8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B501EC  4B 5F 56 AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B501F0  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B501F4  38 00 00 1A */	li r0, 0x1a
/* 80B501F8  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B501FC  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B50200  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B50204  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B50208:
/* 80B50208  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B5020C  2C 00 00 09 */	cmpwi r0, 9
/* 80B50210  41 82 02 1C */	beq lbl_80B5042C
/* 80B50214  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B50218  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B5021C  4B 5F 56 7D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B50220  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B50224  38 00 00 09 */	li r0, 9
/* 80B50228  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B5022C  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B50230  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B50234  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B50238  48 00 01 F4 */	b lbl_80B5042C
lbl_80B5023C:
/* 80B5023C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B50240  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B50244  41 82 00 28 */	beq lbl_80B5026C
/* 80B50248  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B5024C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B50250  4B 5F 56 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B50254  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B50258  38 00 00 11 */	li r0, 0x11
/* 80B5025C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B50260  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B50264  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B50268  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B5026C:
/* 80B5026C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B50270  2C 00 00 12 */	cmpwi r0, 0x12
/* 80B50274  41 82 01 B8 */	beq lbl_80B5042C
/* 80B50278  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B5027C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B50280  4B 5F 56 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B50284  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B50288  38 00 00 12 */	li r0, 0x12
/* 80B5028C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B50290  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B50294  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B50298  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B5029C  48 00 01 90 */	b lbl_80B5042C
lbl_80B502A0:
/* 80B502A0  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B502A4  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B502A8  41 82 00 28 */	beq lbl_80B502D0
/* 80B502AC  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B502B0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B502B4  4B 5F 55 E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B502B8  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B502BC  38 00 00 1A */	li r0, 0x1a
/* 80B502C0  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B502C4  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B502C8  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B502CC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B502D0:
/* 80B502D0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B502D4  2C 00 00 12 */	cmpwi r0, 0x12
/* 80B502D8  41 82 01 54 */	beq lbl_80B5042C
/* 80B502DC  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B502E0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B502E4  4B 5F 55 B5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B502E8  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B502EC  38 00 00 12 */	li r0, 0x12
/* 80B502F0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B502F4  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B502F8  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B502FC  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B50300  48 00 01 2C */	b lbl_80B5042C
lbl_80B50304:
/* 80B50304  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B50308  2C 00 00 13 */	cmpwi r0, 0x13
/* 80B5030C  41 82 00 28 */	beq lbl_80B50334
/* 80B50310  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B50314  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B50318  4B 5F 55 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5031C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B50320  38 00 00 13 */	li r0, 0x13
/* 80B50324  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B50328  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B5032C  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B50330  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B50334:
/* 80B50334  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B50338  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B5033C  41 82 00 F0 */	beq lbl_80B5042C
/* 80B50340  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B50344  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B50348  4B 5F 55 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5034C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B50350  38 00 00 11 */	li r0, 0x11
/* 80B50354  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B50358  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B5035C  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B50360  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B50364  48 00 00 C8 */	b lbl_80B5042C
lbl_80B50368:
/* 80B50368  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B5036C  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B50370  41 82 00 28 */	beq lbl_80B50398
/* 80B50374  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B50378  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B5037C  4B 5F 55 1D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B50380  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B50384  38 00 00 1A */	li r0, 0x1a
/* 80B50388  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B5038C  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B50390  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B50394  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B50398:
/* 80B50398  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B5039C  2C 00 00 00 */	cmpwi r0, 0
/* 80B503A0  41 82 00 8C */	beq lbl_80B5042C
/* 80B503A4  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B503A8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B503AC  4B 5F 54 ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B503B0  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B503B4  38 00 00 00 */	li r0, 0
/* 80B503B8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B503BC  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B503C0  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B503C4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B503C8  48 00 00 64 */	b lbl_80B5042C
lbl_80B503CC:
/* 80B503CC  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B503D0  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B503D4  41 82 00 28 */	beq lbl_80B503FC
/* 80B503D8  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B503DC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B503E0  4B 5F 54 B9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B503E4  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B503E8  38 00 00 1A */	li r0, 0x1a
/* 80B503EC  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B503F0  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B503F4  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B503F8  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B503FC:
/* 80B503FC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B50400  2C 00 00 00 */	cmpwi r0, 0
/* 80B50404  41 82 00 28 */	beq lbl_80B5042C
/* 80B50408  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B5040C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B50410  4B 5F 54 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B50414  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B50418  38 00 00 00 */	li r0, 0
/* 80B5041C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B50420  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B50424  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B50428  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B5042C:
/* 80B5042C  38 00 00 02 */	li r0, 2
/* 80B50430  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B50434:
/* 80B50434  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B50438  28 00 00 07 */	cmplwi r0, 7
/* 80B5043C  40 82 00 20 */	bne lbl_80B5045C
/* 80B50440  38 60 03 0C */	li r3, 0x30c
/* 80B50444  4B 5F C6 69 */	bl daNpcT_chkEvtBit__FUl
/* 80B50448  2C 03 00 00 */	cmpwi r3, 0
/* 80B5044C  40 82 00 10 */	bne lbl_80B5045C
/* 80B50450  38 00 00 01 */	li r0, 1
/* 80B50454  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80B50458  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80B5045C:
/* 80B5045C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B50460  2C 00 00 00 */	cmpwi r0, 0
/* 80B50464  40 82 03 8C */	bne lbl_80B507F0
/* 80B50468  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B5046C  28 00 00 04 */	cmplwi r0, 4
/* 80B50470  40 82 00 C8 */	bne lbl_80B50538
/* 80B50474  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80B50478  4B 5F 52 91 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B5047C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B50480  41 82 00 7C */	beq lbl_80B504FC
/* 80B50484  80 7F 0B C8 */	lwz r3, 0xbc8(r31)
/* 80B50488  38 1E 05 38 */	addi r0, r30, 0x538
/* 80B5048C  7C 63 00 50 */	subf r3, r3, r0
/* 80B50490  30 03 FF FF */	addic r0, r3, -1
/* 80B50494  7C 00 19 10 */	subfe r0, r0, r3
/* 80B50498  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B5049C  40 82 00 10 */	bne lbl_80B504AC
/* 80B504A0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B504A4  2C 00 00 03 */	cmpwi r0, 3
/* 80B504A8  41 82 00 34 */	beq lbl_80B504DC
lbl_80B504AC:
/* 80B504AC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B504B0  4B 5F 52 4D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B504B4  38 00 00 00 */	li r0, 0
/* 80B504B8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B504BC  3C 60 80 B5 */	lis r3, lit_4330@ha /* 0x80B5237C@ha */
/* 80B504C0  C0 03 23 7C */	lfs f0, lit_4330@l(r3)  /* 0x80B5237C@l */
/* 80B504C4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B504C8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B504CC  38 00 00 03 */	li r0, 3
/* 80B504D0  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 80B504D4  38 00 00 01 */	li r0, 1
/* 80B504D8  48 00 00 08 */	b lbl_80B504E0
lbl_80B504DC:
/* 80B504DC  38 00 00 00 */	li r0, 0
lbl_80B504E0:
/* 80B504E0  2C 00 00 00 */	cmpwi r0, 0
/* 80B504E4  41 82 00 0C */	beq lbl_80B504F0
/* 80B504E8  38 1E 05 38 */	addi r0, r30, 0x538
/* 80B504EC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
lbl_80B504F0:
/* 80B504F0  38 00 00 00 */	li r0, 0
/* 80B504F4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B504F8  48 00 02 54 */	b lbl_80B5074C
lbl_80B504FC:
/* 80B504FC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B50500  2C 00 00 00 */	cmpwi r0, 0
/* 80B50504  41 82 00 28 */	beq lbl_80B5052C
/* 80B50508  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B5050C  4B 5F 51 F1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B50510  38 00 00 00 */	li r0, 0
/* 80B50514  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B50518  3C 60 80 B5 */	lis r3, lit_4330@ha /* 0x80B5237C@ha */
/* 80B5051C  C0 03 23 7C */	lfs f0, lit_4330@l(r3)  /* 0x80B5237C@l */
/* 80B50520  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B50524  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B50528  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B5052C:
/* 80B5052C  38 00 00 00 */	li r0, 0
/* 80B50530  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B50534  48 00 02 18 */	b lbl_80B5074C
lbl_80B50538:
/* 80B50538  28 00 00 03 */	cmplwi r0, 3
/* 80B5053C  40 82 00 14 */	bne lbl_80B50550
/* 80B50540  38 60 01 1F */	li r3, 0x11f
/* 80B50544  4B 5F C5 69 */	bl daNpcT_chkEvtBit__FUl
/* 80B50548  2C 03 00 00 */	cmpwi r3, 0
/* 80B5054C  41 82 00 10 */	beq lbl_80B5055C
lbl_80B50550:
/* 80B50550  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B50554  28 00 00 05 */	cmplwi r0, 5
/* 80B50558  40 82 00 0C */	bne lbl_80B50564
lbl_80B5055C:
/* 80B5055C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B50560  4B 5F 51 9D */	bl remove__18daNpcT_ActorMngr_cFv
lbl_80B50564:
/* 80B50564  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B50568  4B 5F 51 A1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B5056C  28 03 00 00 */	cmplwi r3, 0
/* 80B50570  41 82 00 D4 */	beq lbl_80B50644
/* 80B50574  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B50578  28 00 00 00 */	cmplwi r0, 0
/* 80B5057C  40 82 00 C8 */	bne lbl_80B50644
/* 80B50580  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B50584  2C 00 00 01 */	cmpwi r0, 1
/* 80B50588  41 82 00 2C */	beq lbl_80B505B4
/* 80B5058C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B50590  4B 5F 51 6D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B50594  38 00 00 00 */	li r0, 0
/* 80B50598  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B5059C  3C 60 80 B5 */	lis r3, lit_4330@ha /* 0x80B5237C@ha */
/* 80B505A0  C0 03 23 7C */	lfs f0, lit_4330@l(r3)  /* 0x80B5237C@l */
/* 80B505A4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B505A8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B505AC  38 00 00 01 */	li r0, 1
/* 80B505B0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B505B4:
/* 80B505B4  38 00 00 00 */	li r0, 0
/* 80B505B8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B505BC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B505C0  4B 5F 51 49 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B505C4  7C 64 1B 78 */	mr r4, r3
/* 80B505C8  7F E3 FB 78 */	mr r3, r31
/* 80B505CC  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80B505D0  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80B505D4  4B 5F A5 FD */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B505D8  2C 03 00 00 */	cmpwi r3, 0
/* 80B505DC  40 82 00 3C */	bne lbl_80B50618
/* 80B505E0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B505E4  2C 00 00 00 */	cmpwi r0, 0
/* 80B505E8  41 82 00 28 */	beq lbl_80B50610
/* 80B505EC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B505F0  4B 5F 51 0D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B505F4  38 00 00 00 */	li r0, 0
/* 80B505F8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B505FC  3C 60 80 B5 */	lis r3, lit_4330@ha /* 0x80B5237C@ha */
/* 80B50600  C0 03 23 7C */	lfs f0, lit_4330@l(r3)  /* 0x80B5237C@l */
/* 80B50604  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B50608  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B5060C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B50610:
/* 80B50610  38 00 00 00 */	li r0, 0
/* 80B50614  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80B50618:
/* 80B50618  7F E3 FB 78 */	mr r3, r31
/* 80B5061C  4B 5F AD 1D */	bl srchPlayerActor__8daNpcT_cFv
/* 80B50620  2C 03 00 00 */	cmpwi r3, 0
/* 80B50624  40 82 01 28 */	bne lbl_80B5074C
/* 80B50628  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80B5062C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B50630  7C 03 00 00 */	cmpw r3, r0
/* 80B50634  40 82 01 18 */	bne lbl_80B5074C
/* 80B50638  38 00 00 01 */	li r0, 1
/* 80B5063C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80B50640  48 00 01 0C */	b lbl_80B5074C
lbl_80B50644:
/* 80B50644  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B50648  2C 00 00 00 */	cmpwi r0, 0
/* 80B5064C  41 82 00 28 */	beq lbl_80B50674
/* 80B50650  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B50654  4B 5F 50 A9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B50658  38 00 00 00 */	li r0, 0
/* 80B5065C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B50660  3C 60 80 B5 */	lis r3, lit_4330@ha /* 0x80B5237C@ha */
/* 80B50664  C0 03 23 7C */	lfs f0, lit_4330@l(r3)  /* 0x80B5237C@l */
/* 80B50668  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B5066C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B50670  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B50674:
/* 80B50674  38 00 00 00 */	li r0, 0
/* 80B50678  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B5067C  88 7F 0F 80 */	lbz r3, 0xf80(r31)
/* 80B50680  28 03 00 05 */	cmplwi r3, 5
/* 80B50684  41 82 00 C8 */	beq lbl_80B5074C
/* 80B50688  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B5068C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B50690  7C 04 00 00 */	cmpw r4, r0
/* 80B50694  41 82 00 B0 */	beq lbl_80B50744
/* 80B50698  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80B5069C  28 00 00 00 */	cmplwi r0, 0
/* 80B506A0  41 82 00 88 */	beq lbl_80B50728
/* 80B506A4  28 03 00 03 */	cmplwi r3, 3
/* 80B506A8  40 82 00 14 */	bne lbl_80B506BC
/* 80B506AC  38 60 01 1F */	li r3, 0x11f
/* 80B506B0  4B 5F C3 FD */	bl daNpcT_chkEvtBit__FUl
/* 80B506B4  2C 03 00 00 */	cmpwi r3, 0
/* 80B506B8  40 82 00 10 */	bne lbl_80B506C8
lbl_80B506BC:
/* 80B506BC  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B506C0  28 00 00 06 */	cmplwi r0, 6
/* 80B506C4  40 82 00 34 */	bne lbl_80B506F8
lbl_80B506C8:
/* 80B506C8  7F E3 FB 78 */	mr r3, r31
/* 80B506CC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B506D0  38 A0 00 15 */	li r5, 0x15
/* 80B506D4  38 C0 00 1F */	li r6, 0x1f
/* 80B506D8  38 E0 00 0F */	li r7, 0xf
/* 80B506DC  39 00 00 00 */	li r8, 0
/* 80B506E0  4B 5F AF 69 */	bl step__8daNpcT_cFsiiii
/* 80B506E4  2C 03 00 00 */	cmpwi r3, 0
/* 80B506E8  41 82 00 50 */	beq lbl_80B50738
/* 80B506EC  38 00 00 01 */	li r0, 1
/* 80B506F0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80B506F4  48 00 00 44 */	b lbl_80B50738
lbl_80B506F8:
/* 80B506F8  7F E3 FB 78 */	mr r3, r31
/* 80B506FC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B50700  38 A0 00 1A */	li r5, 0x1a
/* 80B50704  38 C0 00 1E */	li r6, 0x1e
/* 80B50708  38 E0 00 0F */	li r7, 0xf
/* 80B5070C  39 00 00 00 */	li r8, 0
/* 80B50710  4B 5F AF 39 */	bl step__8daNpcT_cFsiiii
/* 80B50714  2C 03 00 00 */	cmpwi r3, 0
/* 80B50718  41 82 00 20 */	beq lbl_80B50738
/* 80B5071C  38 00 00 01 */	li r0, 1
/* 80B50720  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80B50724  48 00 00 14 */	b lbl_80B50738
lbl_80B50728:
/* 80B50728  7F E3 FB 78 */	mr r3, r31
/* 80B5072C  4B 5F A2 ED */	bl setAngle__8daNpcT_cFs
/* 80B50730  38 00 00 01 */	li r0, 1
/* 80B50734  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B50738:
/* 80B50738  38 00 00 00 */	li r0, 0
/* 80B5073C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80B50740  48 00 00 0C */	b lbl_80B5074C
lbl_80B50744:
/* 80B50744  7F E3 FB 78 */	mr r3, r31
/* 80B50748  4B 5F AB F1 */	bl srchPlayerActor__8daNpcT_cFv
lbl_80B5074C:
/* 80B5074C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B50750  2C 00 00 00 */	cmpwi r0, 0
/* 80B50754  41 82 00 08 */	beq lbl_80B5075C
/* 80B50758  48 00 00 98 */	b lbl_80B507F0
lbl_80B5075C:
/* 80B5075C  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B50760  2C 00 00 05 */	cmpwi r0, 5
/* 80B50764  41 82 00 08 */	beq lbl_80B5076C
/* 80B50768  48 00 00 88 */	b lbl_80B507F0
lbl_80B5076C:
/* 80B5076C  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80B50770  4B 5F 4F 99 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B50774  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B50778  41 82 00 78 */	beq lbl_80B507F0
/* 80B5077C  80 7F 0B C8 */	lwz r3, 0xbc8(r31)
/* 80B50780  38 1E 05 38 */	addi r0, r30, 0x538
/* 80B50784  7C 63 00 50 */	subf r3, r3, r0
/* 80B50788  30 03 FF FF */	addic r0, r3, -1
/* 80B5078C  7C 00 19 10 */	subfe r0, r0, r3
/* 80B50790  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B50794  40 82 00 10 */	bne lbl_80B507A4
/* 80B50798  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B5079C  2C 00 00 03 */	cmpwi r0, 3
/* 80B507A0  41 82 00 34 */	beq lbl_80B507D4
lbl_80B507A4:
/* 80B507A4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B507A8  4B 5F 4F 55 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B507AC  38 00 00 00 */	li r0, 0
/* 80B507B0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B507B4  3C 60 80 B5 */	lis r3, lit_4330@ha /* 0x80B5237C@ha */
/* 80B507B8  C0 03 23 7C */	lfs f0, lit_4330@l(r3)  /* 0x80B5237C@l */
/* 80B507BC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B507C0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B507C4  38 00 00 03 */	li r0, 3
/* 80B507C8  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 80B507CC  38 00 00 01 */	li r0, 1
/* 80B507D0  48 00 00 08 */	b lbl_80B507D8
lbl_80B507D4:
/* 80B507D4  38 00 00 00 */	li r0, 0
lbl_80B507D8:
/* 80B507D8  2C 00 00 00 */	cmpwi r0, 0
/* 80B507DC  41 82 00 0C */	beq lbl_80B507E8
/* 80B507E0  38 1E 05 38 */	addi r0, r30, 0x538
/* 80B507E4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
lbl_80B507E8:
/* 80B507E8  38 00 00 00 */	li r0, 0
/* 80B507EC  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80B507F0:
/* 80B507F0  38 60 00 01 */	li r3, 1
/* 80B507F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B507F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B507FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B50800  7C 08 03 A6 */	mtlr r0
/* 80B50804  38 21 00 10 */	addi r1, r1, 0x10
/* 80B50808  4E 80 00 20 */	blr 
