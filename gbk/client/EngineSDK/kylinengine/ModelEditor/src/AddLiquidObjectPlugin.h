#ifndef __ADDLIQUIDOBJECTPLUGIN_H__
#define __ADDLIQUIDOBJECTPLUGIN_H__

#include "WXSceneListener.h"

namespace Fairy {

	class SceneManipulator;

	/** һ���������࣬������³����е�����ˮ���ڱ༭���е�ָʾ��
	��SceneManipulator�д���
	*/
	class AddLiquidObjectPlugin : public SceneListener
	{
	public:

		AddLiquidObjectPlugin(Fairy::SceneManipulator* sceneManipulator);

		virtual ~AddLiquidObjectPlugin();

		//////////////////////////////////////////////////////////////////////////
		virtual void onSceneReset(void);
		virtual void onAddObject(const ObjectPtr& object);
		virtual void onRemoveObject(const ObjectPtr& object);
		virtual void onSelectObject(const ObjectPtr& object);
		virtual void onDeselectObject(const ObjectPtr& object);
		virtual void onDeselectAllObjects(void);
		virtual void onObjectPropertyChanged(const ObjectPtr& object, const String& name);

	protected:

		class Indicator;

		typedef std::map<ObjectPtr, Indicator *> Indicators;
		Indicators mIndicators;

		Fairy::SceneManipulator* mSceneManipulator;
	};
}
#endif 