lbl_804D3048:
/* 804D3048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D304C  7C 08 02 A6 */	mflr r0
/* 804D3050  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D3054  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D3058  7C 7F 1B 79 */	or. r31, r3, r3
/* 804D305C  41 82 00 1C */	beq lbl_804D3078
/* 804D3060  3C A0 80 4D */	lis r5, __vt__8cM3dGLin@ha /* 0x804D4F48@ha */
/* 804D3064  38 05 4F 48 */	addi r0, r5, __vt__8cM3dGLin@l /* 0x804D4F48@l */
/* 804D3068  90 1F 00 18 */	stw r0, 0x18(r31)
/* 804D306C  7C 80 07 35 */	extsh. r0, r4
/* 804D3070  40 81 00 08 */	ble lbl_804D3078
/* 804D3074  4B DF BC C9 */	bl __dl__FPv
lbl_804D3078:
/* 804D3078  7F E3 FB 78 */	mr r3, r31
/* 804D307C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D3080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D3084  7C 08 03 A6 */	mtlr r0
/* 804D3088  38 21 00 10 */	addi r1, r1, 0x10
/* 804D308C  4E 80 00 20 */	blr 
