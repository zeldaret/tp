lbl_8058827C:
/* 8058827C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80588280  7C 08 02 A6 */	mflr r0
/* 80588284  90 01 00 84 */	stw r0, 0x84(r1)
/* 80588288  39 61 00 80 */	addi r11, r1, 0x80
/* 8058828C  4B DD 9F 51 */	bl _savegpr_29
/* 80588290  7C 7F 1B 78 */	mr r31, r3
/* 80588294  3C 60 80 59 */	lis r3, l_gateBmdIdx@ha /* 0x8058AB30@ha */
/* 80588298  3B C3 AB 30 */	addi r30, r3, l_gateBmdIdx@l /* 0x8058AB30@l */
/* 8058829C  88 1F 0B EC */	lbz r0, 0xbec(r31)
/* 805882A0  28 00 00 00 */	cmplwi r0, 0
/* 805882A4  41 82 00 0C */	beq lbl_805882B0
/* 805882A8  28 00 00 01 */	cmplwi r0, 1
/* 805882AC  40 82 00 2C */	bne lbl_805882D8
lbl_805882B0:
/* 805882B0  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 805882B4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805882B8  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 805882BC  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 805882C0  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 805882C4  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 805882C8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805882CC  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 805882D0  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 805882D4  48 00 00 28 */	b lbl_805882FC
lbl_805882D8:
/* 805882D8  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 805882DC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805882E0  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 805882E4  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 805882E8  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 805882EC  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 805882F0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805882F4  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 805882F8  D0 21 00 58 */	stfs f1, 0x58(r1)
lbl_805882FC:
/* 805882FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588300  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80588304  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80588308  4B A8 40 D5 */	bl mDoMtx_YrotS__FPA4_fs
/* 8058830C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588310  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80588314  38 81 00 5C */	addi r4, r1, 0x5c
/* 80588318  7C 85 23 78 */	mr r5, r4
/* 8058831C  4B DB EA 51 */	bl PSMTXMultVec
/* 80588320  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588324  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80588328  38 81 00 50 */	addi r4, r1, 0x50
/* 8058832C  7C 85 23 78 */	mr r5, r4
/* 80588330  4B DB EA 3D */	bl PSMTXMultVec
/* 80588334  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80588338  4B A8 4A 2D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8058833C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80588340  4B A8 4A 95 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80588344  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588348  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8058834C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80588350  4B A8 40 E5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80588354  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588358  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8058835C  A8 9F 0B 7A */	lha r4, 0xb7a(r31)
/* 80588360  4B A8 40 D5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80588364  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588368  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8058836C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80588370  38 84 00 24 */	addi r4, r4, 0x24
/* 80588374  4B DB E1 3D */	bl PSMTXCopy
/* 80588378  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8058837C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80588380  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80588384  4B DB E1 2D */	bl PSMTXCopy
/* 80588388  38 61 00 14 */	addi r3, r1, 0x14
/* 8058838C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80588390  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80588394  4B CD E7 51 */	bl __pl__4cXyzCFRC3Vec
/* 80588398  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8058839C  D0 1F 0B F0 */	stfs f0, 0xbf0(r31)
/* 805883A0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805883A4  D0 1F 0B F4 */	stfs f0, 0xbf4(r31)
/* 805883A8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805883AC  D0 1F 0B F8 */	stfs f0, 0xbf8(r31)
/* 805883B0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805883B4  4B A8 49 B1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805883B8  38 61 00 50 */	addi r3, r1, 0x50
/* 805883BC  4B A8 4A 19 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 805883C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805883C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805883C8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 805883CC  4B A8 40 69 */	bl mDoMtx_YrotM__FPA4_fs
/* 805883D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805883D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805883D8  38 80 7F FF */	li r4, 0x7fff
/* 805883DC  4B A8 40 59 */	bl mDoMtx_YrotM__FPA4_fs
/* 805883E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805883E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805883E8  A8 9F 0B 78 */	lha r4, 0xb78(r31)
/* 805883EC  4B A8 40 49 */	bl mDoMtx_YrotM__FPA4_fs
/* 805883F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805883F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805883F8  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 805883FC  38 84 00 24 */	addi r4, r4, 0x24
/* 80588400  4B DB E0 B1 */	bl PSMTXCopy
/* 80588404  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588408  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8058840C  38 9F 0A E8 */	addi r4, r31, 0xae8
/* 80588410  4B DB E0 A1 */	bl PSMTXCopy
/* 80588414  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80588418  D0 1F 0B FC */	stfs f0, 0xbfc(r31)
/* 8058841C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80588420  D0 1F 0C 00 */	stfs f0, 0xc00(r31)
/* 80588424  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80588428  D0 1F 0C 04 */	stfs f0, 0xc04(r31)
/* 8058842C  88 1F 0B EC */	lbz r0, 0xbec(r31)
/* 80588430  28 00 00 01 */	cmplwi r0, 1
/* 80588434  41 82 03 54 */	beq lbl_80588788
/* 80588438  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8058843C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80588440  28 00 00 FF */	cmplwi r0, 0xff
/* 80588444  41 82 03 44 */	beq lbl_80588788
/* 80588448  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8058844C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80588450  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80588454  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80588458  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 8058845C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80588460  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588464  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80588468  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8058846C  A8 1F 0B 7A */	lha r0, 0xb7a(r31)
/* 80588470  7C 04 02 14 */	add r0, r4, r0
/* 80588474  7C 04 07 34 */	extsh r4, r0
/* 80588478  4B A8 3F 65 */	bl mDoMtx_YrotS__FPA4_fs
/* 8058847C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588480  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80588484  38 81 00 44 */	addi r4, r1, 0x44
/* 80588488  7C 85 23 78 */	mr r5, r4
/* 8058848C  4B DB E8 E1 */	bl PSMTXMultVec
/* 80588490  C0 1F 0B C4 */	lfs f0, 0xbc4(r31)
/* 80588494  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80588498  C0 1F 0B C8 */	lfs f0, 0xbc8(r31)
/* 8058849C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805884A0  C0 1F 0B CC */	lfs f0, 0xbcc(r31)
/* 805884A4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805884A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805884AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805884B0  38 81 00 2C */	addi r4, r1, 0x2c
/* 805884B4  7C 85 23 78 */	mr r5, r4
/* 805884B8  4B DB E8 B5 */	bl PSMTXMultVec
/* 805884BC  C0 1F 0B B8 */	lfs f0, 0xbb8(r31)
/* 805884C0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805884C4  C0 1F 0B BC */	lfs f0, 0xbbc(r31)
/* 805884C8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805884CC  C0 1F 0B C0 */	lfs f0, 0xbc0(r31)
/* 805884D0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805884D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805884D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805884DC  38 81 00 38 */	addi r4, r1, 0x38
/* 805884E0  7C 85 23 78 */	mr r5, r4
/* 805884E4  4B DB E8 89 */	bl PSMTXMultVec
/* 805884E8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805884EC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805884F0  80 1F 0B 9C */	lwz r0, 0xb9c(r31)
/* 805884F4  1C 00 0B B8 */	mulli r0, r0, 0xbb8
/* 805884F8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805884FC  7C 63 02 14 */	add r3, r3, r0
/* 80588500  C0 23 00 04 */	lfs f1, 4(r3)
/* 80588504  C0 1F 0B B4 */	lfs f0, 0xbb4(r31)
/* 80588508  EC 00 00 72 */	fmuls f0, f0, f1
/* 8058850C  FC 00 00 1E */	fctiwz f0, f0
/* 80588510  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80588514  83 A1 00 6C */	lwz r29, 0x6c(r1)
/* 80588518  38 7F 0B B4 */	addi r3, r31, 0xbb4
/* 8058851C  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80588520  C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 80588524  C0 7E 00 D4 */	lfs f3, 0xd4(r30)
/* 80588528  C0 9E 00 D8 */	lfs f4, 0xd8(r30)
/* 8058852C  4B CE 74 51 */	bl cLib_addCalc__FPfffff
/* 80588530  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80588534  4B A8 48 31 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80588538  38 61 00 5C */	addi r3, r1, 0x5c
/* 8058853C  4B A8 48 99 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80588540  38 61 00 2C */	addi r3, r1, 0x2c
/* 80588544  4B A8 48 91 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80588548  38 61 00 44 */	addi r3, r1, 0x44
/* 8058854C  4B A8 48 89 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80588550  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588554  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80588558  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8058855C  A8 1F 0B 7A */	lha r0, 0xb7a(r31)
/* 80588560  7C 04 02 14 */	add r0, r4, r0
/* 80588564  7C 04 07 34 */	extsh r4, r0
/* 80588568  4B A8 3E CD */	bl mDoMtx_YrotM__FPA4_fs
/* 8058856C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588570  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80588574  38 80 F1 C8 */	li r4, -3640
/* 80588578  4B A8 3E 25 */	bl mDoMtx_XrotM__FPA4_fs
/* 8058857C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588580  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80588584  A8 1F 0B AE */	lha r0, 0xbae(r31)
/* 80588588  7C 00 00 D0 */	neg r0, r0
/* 8058858C  7C 04 07 34 */	extsh r4, r0
/* 80588590  4B A8 3E 0D */	bl mDoMtx_XrotM__FPA4_fs
/* 80588594  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 80588598  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 8058859C  FC 60 10 90 */	fmr f3, f2
/* 805885A0  4B A8 47 FD */	bl transM__14mDoMtx_stack_cFfff
/* 805885A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805885A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805885AC  A8 9F 0B B2 */	lha r4, 0xbb2(r31)
/* 805885B0  4B A8 3F 1D */	bl mDoMtx_ZrotM__FPA4_fs
/* 805885B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805885B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805885BC  7F A4 EB 78 */	mr r4, r29
/* 805885C0  4B A8 3F 0D */	bl mDoMtx_ZrotM__FPA4_fs
/* 805885C4  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 805885C8  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 805885CC  FC 60 10 90 */	fmr f3, f2
/* 805885D0  4B A8 47 CD */	bl transM__14mDoMtx_stack_cFfff
/* 805885D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805885D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805885DC  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 805885E0  38 84 00 24 */	addi r4, r4, 0x24
/* 805885E4  4B DB DE CD */	bl PSMTXCopy
/* 805885E8  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 805885EC  28 00 00 00 */	cmplwi r0, 0
/* 805885F0  41 82 01 98 */	beq lbl_80588788
/* 805885F4  A8 1F 0B B2 */	lha r0, 0xbb2(r31)
/* 805885F8  2C 00 00 00 */	cmpwi r0, 0
/* 805885FC  40 82 00 78 */	bne lbl_80588674
/* 80588600  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80588604  4B A8 47 61 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80588608  38 61 00 5C */	addi r3, r1, 0x5c
/* 8058860C  4B A8 47 C9 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80588610  38 61 00 44 */	addi r3, r1, 0x44
/* 80588614  4B A8 47 C1 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80588618  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8058861C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80588620  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80588624  A8 1F 0B 7A */	lha r0, 0xb7a(r31)
/* 80588628  7C 04 02 14 */	add r0, r4, r0
/* 8058862C  7C 04 07 34 */	extsh r4, r0
/* 80588630  4B A8 3E 05 */	bl mDoMtx_YrotM__FPA4_fs
/* 80588634  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588638  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8058863C  38 80 F1 C8 */	li r4, -3640
/* 80588640  4B A8 3D 5D */	bl mDoMtx_XrotM__FPA4_fs
/* 80588644  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588648  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8058864C  A8 1F 0B AE */	lha r0, 0xbae(r31)
/* 80588650  7C 00 00 D0 */	neg r0, r0
/* 80588654  7C 04 07 34 */	extsh r4, r0
/* 80588658  4B A8 3D 45 */	bl mDoMtx_XrotM__FPA4_fs
/* 8058865C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588660  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80588664  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80588668  38 84 00 24 */	addi r4, r4, 0x24
/* 8058866C  4B DB DE 45 */	bl PSMTXCopy
/* 80588670  48 00 01 18 */	b lbl_80588788
lbl_80588674:
/* 80588674  C0 3F 0B E8 */	lfs f1, 0xbe8(r31)
/* 80588678  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8058867C  EC 01 00 2A */	fadds f0, f1, f0
/* 80588680  D0 1F 0B E8 */	stfs f0, 0xbe8(r31)
/* 80588684  C0 3F 0B E8 */	lfs f1, 0xbe8(r31)
/* 80588688  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 8058868C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80588690  40 80 00 08 */	bge lbl_80588698
/* 80588694  D0 1F 0B E8 */	stfs f0, 0xbe8(r31)
lbl_80588698:
/* 80588698  C0 3F 0B D8 */	lfs f1, 0xbd8(r31)
/* 8058869C  C0 1F 0B E8 */	lfs f0, 0xbe8(r31)
/* 805886A0  EC 01 00 2A */	fadds f0, f1, f0
/* 805886A4  D0 1F 0B D8 */	stfs f0, 0xbd8(r31)
/* 805886A8  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 805886AC  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 805886B0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805886B4  EC 21 00 2A */	fadds f1, f1, f0
/* 805886B8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805886BC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805886C0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 805886C4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 805886C8  38 61 00 20 */	addi r3, r1, 0x20
/* 805886CC  4B A9 55 F1 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 805886D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805886D4  41 82 00 78 */	beq lbl_8058874C
/* 805886D8  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 805886DC  C0 23 0C D0 */	lfs f1, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 805886E0  C0 1F 0B D8 */	lfs f0, 0xbd8(r31)
/* 805886E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805886E8  40 81 00 64 */	ble lbl_8058874C
/* 805886EC  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 805886F0  EC 00 08 2A */	fadds f0, f0, f1
/* 805886F4  D0 1F 0B D8 */	stfs f0, 0xbd8(r31)
/* 805886F8  88 1F 0B AD */	lbz r0, 0xbad(r31)
/* 805886FC  28 00 00 00 */	cmplwi r0, 0
/* 80588700  40 82 00 4C */	bne lbl_8058874C
/* 80588704  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80588708  D0 01 00 08 */	stfs f0, 8(r1)
/* 8058870C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80588710  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80588714  38 61 00 08 */	addi r3, r1, 8
/* 80588718  7C 64 1B 78 */	mr r4, r3
/* 8058871C  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80588720  4B DB E9 B9 */	bl PSVECScale
/* 80588724  38 60 03 01 */	li r3, 0x301
/* 80588728  38 80 00 03 */	li r4, 3
/* 8058872C  38 BF 0B D4 */	addi r5, r31, 0xbd4
/* 80588730  38 C0 FF FF */	li r6, -1
/* 80588734  38 E0 00 00 */	li r7, 0
/* 80588738  39 01 00 08 */	addi r8, r1, 8
/* 8058873C  39 20 FF FF */	li r9, -1
/* 80588740  4B A9 16 59 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80588744  38 00 00 01 */	li r0, 1
/* 80588748  98 1F 0B AD */	stb r0, 0xbad(r31)
lbl_8058874C:
/* 8058874C  38 7F 0B E0 */	addi r3, r31, 0xbe0
/* 80588750  38 80 C0 00 */	li r4, -16384
/* 80588754  38 A0 00 05 */	li r5, 5
/* 80588758  38 C0 0C 00 */	li r6, 0xc00
/* 8058875C  38 E0 04 00 */	li r7, 0x400
/* 80588760  4B CE 7D E1 */	bl cLib_addCalcAngleS__FPsssss
/* 80588764  38 7F 0B D4 */	addi r3, r31, 0xbd4
/* 80588768  4B A8 45 FD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8058876C  38 7F 0B E0 */	addi r3, r31, 0xbe0
/* 80588770  4B A8 47 D5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80588774  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80588778  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8058877C  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80588780  38 84 00 24 */	addi r4, r4, 0x24
/* 80588784  4B DB DD 2D */	bl PSMTXCopy
lbl_80588788:
/* 80588788  39 61 00 80 */	addi r11, r1, 0x80
/* 8058878C  4B DD 9A 9D */	bl _restgpr_29
/* 80588790  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80588794  7C 08 03 A6 */	mtlr r0
/* 80588798  38 21 00 80 */	addi r1, r1, 0x80
/* 8058879C  4E 80 00 20 */	blr 
